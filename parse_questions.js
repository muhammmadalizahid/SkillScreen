const fs = require('fs');

// Read the JSON file
let content = fs.readFileSync('JSONStructure.txt', 'utf-8');

// Remove comment lines (like "MEDIUM - SOFT ENGG", "HARD - SOFT ENGG", etc.)
content = content.replace(/^[A-Z\s\-]+$/gm, '');
// Remove // comment lines
content = content.replace(/^\s*\/\/.*$/gm, '');

// Split by array boundaries
const arrayMatches = content.match(/\[[\s\S]*?\](?=\s*\[|\s*$)/g) || [];

let allQuestions = [];
for (const arrayStr of arrayMatches) {
    try {
        const questions = JSON.parse(arrayStr);
        allQuestions = allQuestions.concat(questions);
    } catch (e) {
        console.error('Error parsing array:', e.message);
    }
}

console.log(`Total questions parsed: ${allQuestions.length}`);

// Group by field and difficulty
const summary = {};
for (const q of allQuestions) {
    const field = q.field || 'Unknown';
    const diff = q.difficulty || 'Unknown';
    const key = `${field} - ${diff}`;
    summary[key] = (summary[key] || 0) + 1;
}

console.log('\nQuestion breakdown:');
Object.keys(summary).sort().forEach(key => {
    console.log(`  ${key}: ${summary[key]}`);
});

// Validate structure
console.log('\nValidating structure...');
const errors = [];
for (let i = 0; i < allQuestions.length; i++) {
    const q = allQuestions[i];
    if (!q.field) errors.push(`Question ${i+1}: Missing 'field'`);
    if (!q.difficulty) errors.push(`Question ${i+1}: Missing 'difficulty'`);
    if (!q.question) errors.push(`Question ${i+1}: Missing 'question'`);
    if (!q.options) errors.push(`Question ${i+1}: Missing 'options'`);
    else if (typeof q.options !== 'object') errors.push(`Question ${i+1}: 'options' is not an object`);
    if (!q.correct_answer) errors.push(`Question ${i+1}: Missing 'correct_answer'`);
}

if (errors.length > 0) {
    console.log(`\nFound ${errors.length} errors:`);
    errors.slice(0, 10).forEach(err => console.log(`  ${err}`));
} else {
    console.log('✓ All questions have valid structure');
}

// Generate SQL INSERT statements
console.log('\nGenerating SQL...');

const sqlStatements = [];
sqlStatements.push('-- Generated SQL for Question Bank Import');
sqlStatements.push('-- Run QuestionBankMigration.sql first!');
sqlStatements.push('');
sqlStatements.push('-- Clear existing question bank (optional)');
sqlStatements.push('-- TRUNCATE TABLE question_bank CASCADE;');
sqlStatements.push('');

for (const q of allQuestions) {
    const field = q.field;
    const difficulty = q.difficulty;
    const question = q.question.replace(/'/g, "''");  // Escape single quotes
    const options = q.options;
    const correct = q.correct_answer;
    
    // Convert options to PostgreSQL array format
    const optionsArray = Object.entries(options).map(([k, v]) => 
        `${k}: ${v}`.replace(/'/g, "''")
    );
    const optionsStr = "ARRAY[" + optionsArray.map(opt => `'${opt}'`).join(", ") + "]";
    
    const skill_name = field;
    
    const sql = `INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, '${skill_name}', '${difficulty}', '${question}', ${optionsStr}, '${correct}'
FROM domains d WHERE d.name = '${field}';
`;
    sqlStatements.push(sql);
}

// Write to file
fs.writeFileSync('QuestionBankImport.sql', sqlStatements.join('\n'), 'utf-8');

console.log(`✓ Generated QuestionBankImport.sql with ${allQuestions.length} questions`);
