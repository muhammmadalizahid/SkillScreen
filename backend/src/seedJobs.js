require('dotenv').config();
const {
  getAllDomains,
  createJob
} = require('./services/databaseService');

async function seedJobs() {
  console.log('🌱 Starting job seeding...\n');

  try {
    // ==================== FETCH EXISTING DOMAINS ====================
    console.log('📁 Fetching existing domains...');
    
    const domains = await getAllDomains();
    
    const webDev = domains.find(d => d.name === 'Web Development');
    const softwareEng = domains.find(d => d.name === 'Software Engineering');
    const aiMl = domains.find(d => d.name === 'AI/ML');
    const dataScience = domains.find(d => d.name === 'Data Science');
    const cybersecurity = domains.find(d => d.name === 'Cybersecurity');
    const devops = domains.find(d => d.name === 'DevOps');
    
    if (!webDev || !softwareEng || !aiMl || !dataScience || !cybersecurity || !devops) {
      throw new Error('Some required domains are missing. Please ensure all 6 domains exist first.');
    }
    
    console.log('✅ Found all 6 domains\n');

    // ==================== CREATE JOBS ====================
    console.log('💼 Creating job postings...\n');
    
    // Job 1: Full Stack Developer - Web Development
    await createJob({
      title: 'Full Stack Developer',
      description: 'We are looking for an experienced full stack developer to build modern web applications. You will work with React on the frontend and Node.js on the backend. Build scalable APIs, design responsive UIs, and collaborate with cross-functional teams.',
      experience_level: 'Mid-Level',
      domain_id: webDev.id,
      location: 'San Francisco, CA',
      salary_range: '$100,000 - $140,000'
    });
    console.log('✓ Created: Full Stack Developer (Web Development)');
    
    // Job 2: Frontend Developer - Web Development
    await createJob({
      title: 'Frontend Developer',
      description: 'Build beautiful and responsive user interfaces using React and modern web technologies. Create pixel-perfect designs, optimize performance, and ensure cross-browser compatibility.',
      experience_level: 'Junior',
      domain_id: webDev.id,
      location: 'Remote',
      salary_range: '$70,000 - $95,000'
    });
    console.log('✓ Created: Frontend Developer (Web Development)');
    
    // Job 3: Backend Developer - Web Development
    await createJob({
      title: 'Backend Developer',
      description: 'Design and implement scalable backend systems using Node.js and Express. Work on database optimization, API design, and microservices architecture.',
      experience_level: 'Mid-Level',
      domain_id: webDev.id,
      location: 'New York, NY',
      salary_range: '$95,000 - $130,000'
    });
    console.log('✓ Created: Backend Developer (Web Development)');
    
    // Job 4: React Native Developer - Web Development
    await createJob({
      title: 'React Native Developer',
      description: 'Build cross-platform mobile applications using React Native and modern JavaScript. Develop native modules, optimize app performance, and ensure smooth user experiences.',
      experience_level: 'Mid-Level',
      domain_id: webDev.id,
      location: 'Austin, TX',
      salary_range: '$90,000 - $125,000'
    });
    console.log('✓ Created: React Native Developer (Web Development)');
    
    // Job 5: Software Engineer - Software Engineering
    await createJob({
      title: 'Software Engineer',
      description: 'Design and develop high-quality software solutions using modern programming languages and best practices. Work on complex algorithms, system design, and code optimization.',
      experience_level: 'Mid-Level',
      domain_id: softwareEng.id,
      location: 'Seattle, WA',
      salary_range: '$110,000 - $150,000'
    });
    console.log('✓ Created: Software Engineer (Software Engineering)');
    
    // Job 6: Senior Java Developer - Software Engineering
    await createJob({
      title: 'Senior Java Developer',
      description: 'Lead development of enterprise applications using Java and related technologies. Mentor junior developers, conduct code reviews, and architect scalable solutions.',
      experience_level: 'Senior',
      domain_id: softwareEng.id,
      location: 'Boston, MA',
      salary_range: '$140,000 - $180,000'
    });
    console.log('✓ Created: Senior Java Developer (Software Engineering)');
    
    // Job 7: C++ Systems Programmer - Software Engineering
    await createJob({
      title: 'C++ Systems Programmer',
      description: 'Develop high-performance systems software using C++ and low-level programming techniques. Optimize critical code paths, work on memory management, and ensure system reliability.',
      experience_level: 'Senior',
      domain_id: softwareEng.id,
      location: 'San Jose, CA',
      salary_range: '$150,000 - $190,000'
    });
    console.log('✓ Created: C++ Systems Programmer (Software Engineering)');
    
    // Job 8: Machine Learning Engineer - AI/ML
    await createJob({
      title: 'Machine Learning Engineer',
      description: 'Join our AI team to build cutting-edge machine learning models. Experience with TensorFlow or PyTorch required. Design and deploy ML models, work on data pipelines, and optimize model performance.',
      experience_level: 'Senior',
      domain_id: aiMl.id,
      location: 'Mountain View, CA',
      salary_range: '$145,000 - $200,000'
    });
    console.log('✓ Created: Machine Learning Engineer (AI/ML)');
    
    // Job 9: Deep Learning Researcher - AI/ML
    await createJob({
      title: 'Deep Learning Researcher',
      description: 'Research and develop state-of-the-art deep learning models for computer vision and NLP tasks. Publish papers, experiment with novel architectures, and push the boundaries of AI.',
      experience_level: 'Senior',
      domain_id: aiMl.id,
      location: 'Palo Alto, CA',
      salary_range: '$160,000 - $220,000'
    });
    console.log('✓ Created: Deep Learning Researcher (AI/ML)');
    
    // Job 10: Data Scientist - Data Science
    await createJob({
      title: 'Data Scientist',
      description: 'Analyze complex datasets and build predictive models to drive business decisions. Use statistical methods, machine learning, and data visualization to extract insights.',
      experience_level: 'Mid-Level',
      domain_id: dataScience.id,
      location: 'Chicago, IL',
      salary_range: '$105,000 - $145,000'
    });
    console.log('✓ Created: Data Scientist (Data Science)');
    
    // Job 11: Junior Data Analyst - Data Science
    await createJob({
      title: 'Junior Data Analyst',
      description: 'Analyze business data, create reports, and provide insights to support decision-making. Work with SQL, Python, and visualization tools to communicate findings.',
      experience_level: 'Junior',
      domain_id: dataScience.id,
      location: 'Remote',
      salary_range: '$60,000 - $85,000'
    });
    console.log('✓ Created: Junior Data Analyst (Data Science)');
    
    // Job 12: Cybersecurity Analyst - Cybersecurity
    await createJob({
      title: 'Cybersecurity Analyst',
      description: 'Protect organizational assets by identifying vulnerabilities and implementing security measures. Monitor threats, respond to incidents, and conduct security assessments.',
      experience_level: 'Mid-Level',
      domain_id: cybersecurity.id,
      location: 'Washington, DC',
      salary_range: '$95,000 - $130,000'
    });
    console.log('✓ Created: Cybersecurity Analyst (Cybersecurity)');
    
    // Job 13: Penetration Tester - Cybersecurity
    await createJob({
      title: 'Penetration Tester',
      description: 'Conduct ethical hacking assessments to identify security weaknesses in systems and networks. Perform vulnerability assessments, write detailed reports, and recommend security improvements.',
      experience_level: 'Senior',
      domain_id: cybersecurity.id,
      location: 'Denver, CO',
      salary_range: '$115,000 - $155,000'
    });
    console.log('✓ Created: Penetration Tester (Cybersecurity)');
    
    // Job 14: DevOps Engineer - DevOps
    await createJob({
      title: 'DevOps Engineer',
      description: 'Build and maintain CI/CD pipelines, manage cloud infrastructure, and automate deployment processes. Work with Docker, Kubernetes, and cloud platforms to ensure reliable deployments.',
      experience_level: 'Mid-Level',
      domain_id: devops.id,
      location: 'Portland, OR',
      salary_range: '$105,000 - $145,000'
    });
    console.log('✓ Created: DevOps Engineer (DevOps)');
    
    // Job 15: Cloud Infrastructure Engineer - DevOps
    await createJob({
      title: 'Cloud Infrastructure Engineer',
      description: 'Design and implement scalable cloud solutions on AWS using infrastructure as code. Manage cloud resources, optimize costs, and ensure high availability of services.',
      experience_level: 'Senior',
      domain_id: devops.id,
      location: 'San Diego, CA',
      salary_range: '$130,000 - $175,000'
    });
    console.log('✓ Created: Cloud Infrastructure Engineer (DevOps)');
    
    console.log('\n✅ All jobs created successfully!\n');
    console.log('📊 Summary:');
    console.log('   - 15 Job Postings Created');
    console.log('   - Web Development: 4 jobs');
    console.log('   - Software Engineering: 3 jobs');
    console.log('   - AI/ML: 2 jobs');
    console.log('   - Data Science: 2 jobs');
    console.log('   - Cybersecurity: 2 jobs');
    console.log('   - DevOps: 2 jobs\n');
    
    process.exit(0);
  } catch (error) {
    console.error('❌ Error seeding jobs:', error);
    process.exit(1);
  }
}

// Run the seed function
seedJobs();
