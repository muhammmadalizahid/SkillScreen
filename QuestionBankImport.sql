-- Generated SQL for Question Bank Import
-- Run QuestionBankMigration.sql first!

-- Clear existing question bank (optional)
-- TRUNCATE TABLE question_bank CASCADE;

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What is the main purpose of HTML in a web application?', ARRAY['A: To handle server-side logic', 'B: To define the structure and content of web pages', 'C: To style web pages', 'D: To manage databases'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which technology is primarily responsible for styling a webpage?', ARRAY['A: HTML', 'B: JavaScript', 'C: CSS', 'D: SQL'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What is JavaScript mainly used for on the client side?', ARRAY['A: Structuring content', 'B: Styling elements', 'C: Adding interactivity and logic', 'D: Hosting web pages'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which part of a web application runs inside the user''s browser?', ARRAY['A: Database', 'B: Backend server', 'C: Client-side code', 'D: Load balancer'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What is the primary function of a web browser?', ARRAY['A: Compile backend code', 'B: Render and display web pages', 'C: Store application data', 'D: Manage server requests'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which protocol is used to transfer web pages over the internet?', ARRAY['A: FTP', 'B: SMTP', 'C: HTTP', 'D: SSH'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What does a URL represent?', ARRAY['A: A programming language', 'B: A unique address of a web resource', 'C: A database record', 'D: A styling rule'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which HTML tag is used to create a hyperlink?', ARRAY['A: <link>', 'B: <a>', 'C: <href>', 'D: <nav>'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What is responsive web design mainly concerned with?', ARRAY['A: Improving server performance', 'B: Supporting multiple databases', 'C: Adapting layout to different screen sizes', 'D: Increasing JavaScript speed'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which file extension is typically used for CSS files?', ARRAY['A: .html', 'B: .js', 'C: .css', 'D: .xml'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What is the primary role of a web server?', ARRAY['A: Designing user interfaces', 'B: Serving web content to clients', 'C: Executing client-side scripts', 'D: Storing browser cache'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which HTML element contains metadata about the document?', ARRAY['A: <body>', 'B: <main>', 'C: <head>', 'D: <footer>'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which HTML tag is used to display images?', ARRAY['A: <image>', 'B: <img>', 'C: <src>', 'D: <media>'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What additional benefit does HTTPS provide over HTTP?', ARRAY['A: Faster rendering', 'B: Better styling', 'C: Encrypted data transfer', 'D: Client-side caching'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which HTML element is required to create a form?', ARRAY['A: <input>', 'B: <form>', 'C: <section>', 'D: <fieldset>'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What is a webpage?', ARRAY['A: A server-side script', 'B: A single document accessible on the web', 'C: A database table', 'D: A network protocol'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which tool allows developers to inspect HTML and CSS in the browser?', ARRAY['A: Package manager', 'B: Browser developer tools', 'C: Database console', 'D: Terminal emulator'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What does the term ''client-side'' mean?', ARRAY['A: Code executed on the server', 'B: Code executed in the user''s browser', 'C: Database-level logic', 'D: Network routing logic'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which HTTP method is typically used to request data from a server?', ARRAY['A: POST', 'B: PUT', 'C: GET', 'D: DELETE'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What is the purpose of a footer in a webpage layout?', ARRAY['A: Display primary content', 'B: Handle authentication', 'C: Show supplementary information', 'D: Render navigation menus'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which HTML element represents the main content area?', ARRAY['A: <section>', 'B: <body>', 'C: <main>', 'D: <article>'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What is the purpose of CSS selectors?', ARRAY['A: To store JavaScript variables', 'B: To select HTML elements for styling', 'C: To define server routes', 'D: To handle form submission'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'Which component is responsible for handling user requests on the server?', ARRAY['A: Browser', 'B: Frontend framework', 'C: Backend application', 'D: CSS engine'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Easy', 'What does ''static website'' typically mean?', ARRAY['A: A site with no backend', 'B: A site that does not change content dynamically', 'C: A site without CSS', 'D: A site that cannot be deployed'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is semantic HTML important in modern web development?', ARRAY['A: It reduces JavaScript bundle size', 'B: It improves accessibility and SEO', 'C: It replaces the need for CSS', 'D: It increases server performance'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the main purpose of the Document Object Model (DOM)?', ARRAY['A: To store website files', 'B: To represent HTML as a programmable structure', 'C: To manage HTTP requests', 'D: To compile JavaScript code'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why are CSS media queries used?', ARRAY['A: To load JavaScript conditionally', 'B: To apply styles based on device characteristics', 'C: To fetch data from APIs', 'D: To define HTML structure'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What problem does event delegation solve in JavaScript?', ARRAY['A: Slow server responses', 'B: Handling many similar event listeners efficiently', 'C: Cross-browser CSS issues', 'D: Database connection pooling'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is client-side validation not sufficient on its own?', ARRAY['A: It increases server cost', 'B: It can be bypassed by malicious users', 'C: It slows down the browser', 'D: It breaks accessibility'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the primary role of HTTP status codes like 404 or 500?', ARRAY['A: Styling error pages', 'B: Indicating the result of a client request', 'C: Encrypting responses', 'D: Caching responses'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is separating frontend and backend logic beneficial?', ARRAY['A: It removes the need for databases', 'B: It improves scalability and maintainability', 'C: It eliminates network latency', 'D: It guarantees security'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the main advantage of using JSON for API responses?', ARRAY['A: It enforces strict typing', 'B: It is lightweight and easy to parse', 'C: It replaces HTML', 'D: It improves encryption'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What does CORS primarily control?', ARRAY['A: Database access permissions', 'B: Cross-origin resource access in browsers', 'C: Server-side authentication', 'D: Client-side routing'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is HTTPS considered essential for modern websites?', ARRAY['A: It improves UI rendering', 'B: It prevents man-in-the-middle attacks', 'C: It reduces JavaScript errors', 'D: It eliminates server crashes'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the role of a RESTful API?', ARRAY['A: To define database schemas', 'B: To standardize client-server communication', 'C: To style web pages', 'D: To compile frontend code'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why are environment variables used in web applications?', ARRAY['A: To speed up execution', 'B: To store configuration outside source code', 'C: To compress assets', 'D: To replace databases'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What problem does browser caching primarily address?', ARRAY['A: Security vulnerabilities', 'B: Slow page load times', 'C: Incorrect HTML structure', 'D: JavaScript syntax errors'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is accessibility (a11y) important in web development?', ARRAY['A: It increases server uptime', 'B: It ensures usability for users with disabilities', 'C: It reduces CSS complexity', 'D: It improves API speed'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the main purpose of version control systems like Git?', ARRAY['A: Deploying applications', 'B: Tracking and managing code changes', 'C: Styling components', 'D: Running backend servers'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why are HTTP methods like GET and POST important?', ARRAY['A: They define how data is styled', 'B: They describe the intent of a request', 'C: They encrypt network traffic', 'D: They improve browser compatibility'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What does progressive enhancement focus on?', ARRAY['A: Building only for modern browsers', 'B: Starting with a basic experience and enhancing it', 'C: Maximizing JavaScript usage', 'D: Replacing CSS with frameworks'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is server-side validation critical?', ARRAY['A: It improves UI consistency', 'B: It ensures data integrity and security', 'C: It reduces frontend code', 'D: It eliminates client-side errors'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the main reason SPAs use client-side routing?', ARRAY['A: To reduce server memory usage', 'B: To avoid full page reloads', 'C: To improve database performance', 'D: To enhance SEO automatically'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is code minification used in production?', ARRAY['A: To improve code readability', 'B: To reduce file size and load time', 'C: To increase security', 'D: To simplify debugging'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What does the separation of concerns principle promote?', ARRAY['A: Using a single programming language', 'B: Dividing responsibilities into distinct layers', 'C: Avoiding frameworks', 'D: Combining frontend and backend code'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is input sanitization important?', ARRAY['A: To improve UI responsiveness', 'B: To prevent security vulnerabilities like XSS', 'C: To reduce server load', 'D: To enhance accessibility'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the main purpose of a build tool like Vite or Webpack?', ARRAY['A: Managing databases', 'B: Bundling and optimizing frontend assets', 'C: Handling authentication', 'D: Serving API requests'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why are reusable components important in frontend development?', ARRAY['A: They reduce browser memory usage', 'B: They improve consistency and reduce duplication', 'C: They eliminate CSS needs', 'D: They replace backend logic'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is lazy loading used for images or components?', ARRAY['A: To increase image quality', 'B: To load resources only when needed', 'C: To improve SEO directly', 'D: To avoid using JavaScript'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What problem does a Content Delivery Network (CDN) primarily solve?', ARRAY['A: Database scalability', 'B: Reducing latency by serving content closer to users', 'C: Authentication management', 'D: API versioning'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why are HTTP headers important in web communication?', ARRAY['A: They define HTML structure', 'B: They carry metadata about requests and responses', 'C: They style web pages', 'D: They execute JavaScript'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the main purpose of API versioning?', ARRAY['A: To improve network speed', 'B: To maintain backward compatibility', 'C: To secure endpoints', 'D: To reduce server cost'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why are SQL injection attacks possible without proper validation?', ARRAY['A: Because browsers execute SQL', 'B: Because user input can alter database queries', 'C: Because APIs expose database schemas', 'D: Because CSS selectors are unsafe'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What does the Same-Origin Policy restrict?', ARRAY['A: Server-to-server communication', 'B: How documents or scripts from one origin access resources from another', 'C: Database access levels', 'D: User authentication methods'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is state management needed in complex frontend applications?', ARRAY['A: To replace backend storage', 'B: To manage shared data across components', 'C: To reduce HTML size', 'D: To improve CSS rendering'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the main benefit of using HTTP cookies?', ARRAY['A: Storing large datasets', 'B: Maintaining state across requests', 'C: Improving SEO ranking', 'D: Reducing server load'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is rate limiting used in APIs?', ARRAY['A: To improve frontend responsiveness', 'B: To prevent abuse and excessive requests', 'C: To encrypt data', 'D: To version endpoints'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What does hydration mean in modern web frameworks?', ARRAY['A: Loading CSS dynamically', 'B: Attaching JavaScript behavior to server-rendered HTML', 'C: Compressing assets', 'D: Caching API responses'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is normalization important in relational databases?', ARRAY['A: To increase query complexity', 'B: To reduce data redundancy', 'C: To improve UI rendering', 'D: To enhance API security'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the main goal of authentication in web applications?', ARRAY['A: To restrict database schemas', 'B: To verify the identity of users', 'C: To encrypt API responses', 'D: To improve page speed'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why are access tokens preferred over sessions in stateless APIs?', ARRAY['A: They reduce frontend code', 'B: They allow scalability without server-side session storage', 'C: They eliminate authentication', 'D: They improve UI consistency'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What problem does debouncing solve in frontend applications?', ARRAY['A: Slow database queries', 'B: Excessive function calls during rapid events', 'C: Memory leaks on the server', 'D: CSS layout shifts'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is pagination used when displaying large datasets?', ARRAY['A: To improve styling flexibility', 'B: To reduce load time and resource usage', 'C: To enhance authentication', 'D: To simplify database schemas'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the main benefit of using prepared statements?', ARRAY['A: Faster UI rendering', 'B: Protection against SQL injection', 'C: Automatic schema creation', 'D: Client-side validation'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why are service workers used in web applications?', ARRAY['A: To manage databases', 'B: To enable offline functionality and caching', 'C: To replace backend servers', 'D: To improve CSS performance'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What does idempotency mean in HTTP methods?', ARRAY['A: Requests are encrypted', 'B: Multiple identical requests produce the same result', 'C: Responses are cached', 'D: Requests require authentication'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is logging important in production systems?', ARRAY['A: To improve frontend performance', 'B: To monitor behavior and debug issues', 'C: To replace testing', 'D: To reduce server cost'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the primary purpose of middleware in backend frameworks?', ARRAY['A: Rendering UI components', 'B: Processing requests before reaching route handlers', 'C: Managing databases directly', 'D: Deploying applications'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is immutability encouraged in state management?', ARRAY['A: It reduces network usage', 'B: It makes state changes predictable and easier to track', 'C: It eliminates the need for APIs', 'D: It improves CSS performance'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'What is the main benefit of using schema validation for APIs?', ARRAY['A: Better UI design', 'B: Consistent and predictable data structures', 'C: Reduced frontend logic', 'D: Improved SEO'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Medium', 'Why is continuous integration (CI) useful in web development?', ARRAY['A: It replaces manual testing', 'B: It catches integration issues early', 'C: It improves runtime performance', 'D: It manages user sessions'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why can excessive client-side rendering negatively impact SEO without additional techniques?', ARRAY['A: Search engines cannot parse CSS', 'B: Content may not be available during initial HTML crawl', 'C: JavaScript files are blocked by default', 'D: APIs cannot be indexed'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What architectural problem does server-side rendering primarily address in large SPAs?', ARRAY['A: Database normalization', 'B: Slow first contentful paint', 'C: API authentication', 'D: State mutation bugs'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why can overusing microservices increase system complexity?', ARRAY['A: They prevent horizontal scaling', 'B: They increase network latency and coordination overhead', 'C: They eliminate shared databases', 'D: They reduce code reuse'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the main reason distributed systems require eventual consistency models?', ARRAY['A: Databases cannot scale vertically', 'B: Network partitions are unavoidable', 'C: Clients require synchronous APIs', 'D: Caching layers fail frequently'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why is relying solely on client-side authentication insecure?', ARRAY['A: Browsers cannot store tokens', 'B: Client logic can be modified by attackers', 'C: HTTPS prevents validation', 'D: APIs reject client credentials'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What problem does the CAP theorem highlight for distributed web systems?', ARRAY['A: Security versus usability trade-offs', 'B: Consistency, availability, and partition tolerance cannot all be guaranteed', 'C: Latency increases with scale', 'D: APIs require versioning'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why can aggressive caching cause stale data issues?', ARRAY['A: Caches ignore HTTP headers', 'B: Invalidation is difficult to manage correctly', 'C: CDNs bypass servers', 'D: Browsers block cached responses'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the key risk of sharing JWTs in localStorage?', ARRAY['A: They cannot be refreshed', 'B: They are vulnerable to XSS attacks', 'C: They expire too quickly', 'D: They increase API latency'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why does tight coupling between frontend and backend slow down development?', ARRAY['A: It increases database queries', 'B: Changes in one layer require changes in the other', 'C: It eliminates API contracts', 'D: It reduces test coverage'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the main drawback of long-running synchronous HTTP requests?', ARRAY['A: They prevent authentication', 'B: They tie up server resources', 'C: They reduce API discoverability', 'D: They break REST principles'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why is horizontal scaling preferred over vertical scaling for web services?', ARRAY['A: It eliminates the need for load balancers', 'B: It avoids single points of failure', 'C: It simplifies database schemas', 'D: It guarantees consistency'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the core benefit of using message queues in backend systems?', ARRAY['A: Immediate response delivery', 'B: Decoupling and asynchronous processing', 'C: Data encryption', 'D: API versioning'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why is database indexing a trade-off rather than a pure optimization?', ARRAY['A: Indexes increase read latency', 'B: Indexes slow down write operations', 'C: Indexes reduce query accuracy', 'D: Indexes break transactions'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What makes cache invalidation one of the hardest problems in web systems?', ARRAY['A: Caches are unreliable', 'B: Determining when data becomes outdated is complex', 'C: HTTP does not support caching', 'D: Browsers ignore cache rules'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why is observability critical in distributed web applications?', ARRAY['A: It replaces automated testing', 'B: It helps understand system behavior across services', 'C: It improves CSS rendering', 'D: It reduces database size'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What risk arises from deploying code without proper rollback mechanisms?', ARRAY['A: Reduced performance', 'B: Extended downtime during failures', 'C: Increased bundle size', 'D: Broken CSS layouts'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why can optimistic UI updates be dangerous without safeguards?', ARRAY['A: They slow down rendering', 'B: They may display incorrect state if requests fail', 'C: They break accessibility', 'D: They increase API calls'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the main downside of tightly coupled database schemas across services?', ARRAY['A: Reduced query performance', 'B: Schema changes become risky and hard to coordinate', 'C: Data duplication increases', 'D: Indexes cannot be used'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why does rate limiting alone not fully prevent denial-of-service attacks?', ARRAY['A: Attackers can distribute requests across IPs', 'B: Rate limits slow down APIs', 'C: CDNs bypass limits', 'D: HTTP headers disable limits'], 'A'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the main architectural benefit of API gateways?', ARRAY['A: They replace backend services', 'B: They centralize cross-cutting concerns like auth and logging', 'C: They improve database normalization', 'D: They eliminate latency'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why can global state misuse lead to unpredictable frontend behavior?', ARRAY['A: State updates are asynchronous', 'B: Multiple components may modify shared state unintentionally', 'C: CSS conflicts arise', 'D: APIs reject shared data'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the primary challenge of zero-downtime deployments?', ARRAY['A: Increased code size', 'B: Maintaining compatibility between old and new versions', 'C: Reducing server costs', 'D: Improving UI responsiveness'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why is strict API contract enforcement important in large teams?', ARRAY['A: It improves UI consistency', 'B: It prevents breaking changes between services', 'C: It reduces server memory usage', 'D: It eliminates testing needs'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the main risk of ignoring backpressure in asynchronous systems?', ARRAY['A: Reduced API discoverability', 'B: System overload and cascading failures', 'C: Slower CSS rendering', 'D: Authentication errors'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why can synchronous database transactions become a bottleneck in high-traffic web applications?', ARRAY['A: They prevent horizontal scaling', 'B: They block resources while waiting for locks or I/O', 'C: They disable indexing', 'D: They break ACID properties'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the primary reason eventual consistency is acceptable in many web applications?', ARRAY['A: Users require immediate accuracy', 'B: Perfect consistency is impossible', 'C: Temporary inconsistencies do not significantly impact user experience', 'D: Databases cannot enforce constraints'], 'C'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why does tight coupling between microservices defeat their intended benefits?', ARRAY['A: It increases frontend complexity', 'B: It reintroduces monolithic failure modes', 'C: It reduces database performance', 'D: It eliminates REST APIs'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the main security risk of trusting client-provided roles or permissions?', ARRAY['A: Increased latency', 'B: Privilege escalation attacks', 'C: Session expiration', 'D: Broken UI states'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why can database joins across large tables degrade performance at scale?', ARRAY['A: Indexes are ignored', 'B: They increase computational and I/O cost', 'C: They violate normalization rules', 'D: They prevent caching'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What fundamental issue does the N+1 query problem represent?', ARRAY['A: Improper API versioning', 'B: Inefficient data fetching patterns', 'C: Broken authentication logic', 'D: Incorrect schema migrations'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why is schema migration risky in live production systems?', ARRAY['A: Migrations increase bundle size', 'B: They can block writes or break running code', 'C: Databases reject schema changes', 'D: They disable backups'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the main benefit of blue-green deployments?', ARRAY['A: Lower infrastructure cost', 'B: Instant rollback with minimal downtime', 'C: Improved database performance', 'D: Simpler CI pipelines'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why does shared mutable state create concurrency issues?', ARRAY['A: It increases memory usage', 'B: Multiple actors can modify data unpredictably', 'C: It prevents caching', 'D: It increases network latency'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What architectural issue arises when a frontend depends on undocumented backend behavior?', ARRAY['A: Improved performance', 'B: Fragile integrations that break easily', 'C: Reduced API latency', 'D: Automatic backward compatibility'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why can excessive abstraction layers harm system maintainability?', ARRAY['A: They eliminate reuse', 'B: They obscure behavior and complicate debugging', 'C: They increase server uptime', 'D: They enforce strict typing'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the primary challenge of handling distributed transactions?', ARRAY['A: Query optimization', 'B: Ensuring atomicity across multiple services', 'C: API documentation', 'D: Frontend rendering'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why are circuit breakers used in resilient web architectures?', ARRAY['A: To improve UI responsiveness', 'B: To prevent cascading failures', 'C: To optimize database indexes', 'D: To enforce API schemas'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What risk arises when backend services share a single database?', ARRAY['A: Reduced query speed', 'B: Tight coupling and coordination issues', 'C: Automatic data duplication', 'D: Broken authentication'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why is load testing critical before deploying a web application?', ARRAY['A: To improve UI aesthetics', 'B: To identify performance bottlenecks under stress', 'C: To validate HTML semantics', 'D: To reduce code size'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the main drawback of synchronous inter-service communication?', ARRAY['A: Better observability', 'B: Increased latency and tighter coupling', 'C: Reduced security', 'D: Inconsistent data formats'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why can retry mechanisms worsen system outages if misconfigured?', ARRAY['A: They reduce throughput', 'B: They amplify load on already failing services', 'C: They break authentication', 'D: They disable caching'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What architectural concern does backpressure primarily address?', ARRAY['A: Authentication security', 'B: Preventing producers from overwhelming consumers', 'C: Improving SEO', 'D: Reducing bundle size'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why is monitoring latency distributions more useful than averages?', ARRAY['A: Averages are inaccurate', 'B: Tail latency impacts real user experience', 'C: Databases require percentiles', 'D: Logs cannot show averages'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What problem does schema drift cause in distributed systems?', ARRAY['A: Improved backward compatibility', 'B: Inconsistent data interpretation across services', 'C: Reduced network traffic', 'D: Automatic migrations'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why is graceful degradation important in fault-tolerant systems?', ARRAY['A: It maximizes feature count', 'B: It allows partial functionality during failures', 'C: It eliminates errors', 'D: It improves code readability'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the main consequence of ignoring data ownership boundaries?', ARRAY['A: Simpler APIs', 'B: Conflicting writes and unclear responsibility', 'C: Improved scalability', 'D: Reduced redundancy'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why can overly strict consistency guarantees reduce system availability?', ARRAY['A: They require more indexes', 'B: They block operations during partitions', 'C: They increase API payload size', 'D: They prevent caching'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'What is the core challenge of multi-tenant web applications?', ARRAY['A: UI customization', 'B: Data isolation and fair resource usage', 'C: API documentation', 'D: Frontend routing'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Web Development', 'Hard', 'Why is technical debt dangerous if left unmanaged?', ARRAY['A: It increases server costs immediately', 'B: It compounds and slows future development', 'C: It breaks browser compatibility', 'D: It eliminates testing'], 'B'
FROM domains d WHERE d.name = 'Web Development';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What is the primary goal of machine learning?', ARRAY['A: To explicitly program every rule', 'B: To enable systems to learn patterns from data', 'C: To replace all traditional algorithms', 'D: To store large datasets efficiently'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'Which type of machine learning uses labeled data?', ARRAY['A: Unsupervised learning', 'B: Reinforcement learning', 'C: Supervised learning', 'D: Online learning'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What is a feature in a machine learning dataset?', ARRAY['A: The final prediction', 'B: An individual measurable property of the data', 'C: The learning algorithm', 'D: The model output'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What is the purpose of a training dataset?', ARRAY['A: To evaluate final performance', 'B: To teach the model patterns', 'C: To deploy the model', 'D: To visualize results'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'Which task is an example of classification?', ARRAY['A: Predicting house prices', 'B: Grouping customers by behavior', 'C: Identifying whether an email is spam', 'D: Reducing data dimensions'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What does overfitting mean in machine learning?', ARRAY['A: Model performs well on new data', 'B: Model memorizes training data but fails on new data', 'C: Model is too simple', 'D: Model has too little data'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'Which metric is commonly used for classification accuracy?', ARRAY['A: Mean Squared Error', 'B: Accuracy score', 'C: R-squared', 'D: Variance'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What is the role of a loss function?', ARRAY['A: To store model weights', 'B: To measure prediction error', 'C: To generate features', 'D: To normalize data'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'Which algorithm is commonly used for regression?', ARRAY['A: K-Means', 'B: Linear Regression', 'C: Apriori', 'D: Naive Bayes'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What does a validation dataset help with?', ARRAY['A: Final deployment', 'B: Hyperparameter tuning', 'C: Data collection', 'D: Feature labeling'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What is normalization used for?', ARRAY['A: Reducing model size', 'B: Scaling features to a similar range', 'C: Increasing dataset size', 'D: Removing labels'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'Which type of learning involves rewards and penalties?', ARRAY['A: Supervised learning', 'B: Unsupervised learning', 'C: Reinforcement learning', 'D: Batch learning'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What is the output of a classification model?', ARRAY['A: A continuous number', 'B: A probability distribution only', 'C: A discrete class label', 'D: A feature vector'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'Why is data splitting important in machine learning?', ARRAY['A: To increase dataset size', 'B: To prevent data leakage', 'C: To reduce training time', 'D: To improve visualization'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'Which problem does clustering solve?', ARRAY['A: Predicting future values', 'B: Assigning labels based on examples', 'C: Grouping similar data points', 'D: Evaluating model accuracy'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What is a model parameter?', ARRAY['A: A fixed input value', 'B: A learned value adjusted during training', 'C: A data label', 'D: A feature name'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What does inference mean in machine learning?', ARRAY['A: Training the model', 'B: Evaluating loss', 'C: Making predictions using a trained model', 'D: Collecting data'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'Which dataset is used to measure final model performance?', ARRAY['A: Training set', 'B: Validation set', 'C: Test set', 'D: Feature set'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What is the main role of an activation function?', ARRAY['A: To initialize weights', 'B: To introduce non-linearity', 'C: To reduce dataset size', 'D: To calculate accuracy'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'Which term describes a model that performs poorly on both training and test data?', ARRAY['A: Overfitted', 'B: Underfitted', 'C: Optimized', 'D: Regularized'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What does dimensionality reduction aim to do?', ARRAY['A: Increase feature count', 'B: Remove irrelevant or redundant features', 'C: Label data automatically', 'D: Improve data collection'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'Which algorithm is commonly used for clustering?', ARRAY['A: Decision Tree', 'B: Linear Regression', 'C: K-Means', 'D: Logistic Regression'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'Why is labeled data required for supervised learning?', ARRAY['A: To reduce computation', 'B: To guide the model with correct outputs', 'C: To remove noise', 'D: To generate features'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Easy', 'What is the main purpose of regularization?', ARRAY['A: Increase training speed', 'B: Reduce overfitting', 'C: Add more features', 'D: Improve data labeling'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is cross-validation preferred over a single train-test split?', ARRAY['A: It reduces dataset size', 'B: It provides a more reliable estimate of model performance', 'C: It eliminates overfitting completely', 'D: It speeds up training'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What problem does feature scaling primarily address?', ARRAY['A: Label imbalance', 'B: Different feature value ranges affecting learning', 'C: Missing data', 'D: Overlapping classes'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why can high variance lead to poor generalization?', ARRAY['A: The model ignores training data', 'B: The model is too simple', 'C: The model is overly sensitive to training data noise', 'D: The dataset is too large'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the main purpose of using a confusion matrix?', ARRAY['A: To visualize feature correlations', 'B: To evaluate classification errors by class', 'C: To tune hyperparameters', 'D: To normalize predictions'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is accuracy a poor metric for imbalanced datasets?', ARRAY['A: It cannot be computed efficiently', 'B: It ignores true positives', 'C: It can be misleading due to dominant classes', 'D: It only applies to regression'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the role of a learning rate in gradient descent?', ARRAY['A: Controls the number of features', 'B: Determines the step size during weight updates', 'C: Stops training automatically', 'D: Defines the loss function'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why might increasing model complexity increase overfitting?', ARRAY['A: It reduces training time', 'B: It captures noise along with patterns', 'C: It removes bias', 'D: It improves regularization'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What does bias represent in the bias-variance tradeoff?', ARRAY['A: Sensitivity to training data', 'B: Error from overly complex models', 'C: Error from overly simplistic assumptions', 'D: Random noise in data'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is shuffling data important before training?', ARRAY['A: To reduce dataset size', 'B: To avoid learning order-based patterns', 'C: To increase feature diversity', 'D: To remove duplicates'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What problem does gradient descent aim to solve?', ARRAY['A: Feature selection', 'B: Loss minimization', 'C: Data labeling', 'D: Model deployment'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why are decision trees prone to overfitting?', ARRAY['A: They cannot handle numerical data', 'B: They memorize training data through deep splits', 'C: They require normalization', 'D: They lack loss functions'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the main idea behind ensemble learning?', ARRAY['A: Use one complex model', 'B: Combine multiple models to improve performance', 'C: Reduce dataset size', 'D: Eliminate bias entirely'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why does logistic regression use a sigmoid function?', ARRAY['A: To normalize input features', 'B: To output probabilities between 0 and 1', 'C: To reduce variance', 'D: To increase model depth'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is data leakage?', ARRAY['A: Loss of stored datasets', 'B: Using test data information during training', 'C: Corrupted labels', 'D: Overlapping classes'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is PCA considered an unsupervised technique?', ARRAY['A: It requires labeled data', 'B: It ignores output labels', 'C: It predicts target variables', 'D: It is used only for classification'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the primary drawback of K-Means clustering?', ARRAY['A: High computational cost', 'B: Requires predefined number of clusters', 'C: Cannot handle large datasets', 'D: Produces non-linear boundaries'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is regularization added to the loss function?', ARRAY['A: To increase training accuracy', 'B: To penalize large model weights', 'C: To add more features', 'D: To speed up inference'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What does early stopping prevent?', ARRAY['A: High bias', 'B: Overfitting during training', 'C: Data leakage', 'D: Class imbalance'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why are evaluation metrics task-dependent?', ARRAY['A: All models use the same loss', 'B: Different problems require different performance criteria', 'C: Metrics affect training speed', 'D: Metrics reduce bias'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What issue does class imbalance mainly cause?', ARRAY['A: Higher training speed', 'B: Misleading performance metrics', 'C: Improved recall', 'D: Lower variance'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is feature selection important?', ARRAY['A: It increases dataset size', 'B: It reduces noise and model complexity', 'C: It adds bias', 'D: It guarantees higher accuracy'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What does a high recall indicate?', ARRAY['A: Few false positives', 'B: Few false negatives', 'C: High overall accuracy', 'D: Balanced classes'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is model interpretability important in some applications?', ARRAY['A: It improves training speed', 'B: It helps understand and trust model decisions', 'C: It reduces data size', 'D: It increases accuracy automatically'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the main limitation of increasing training data indefinitely?', ARRAY['A: It always causes overfitting', 'B: Diminishing performance returns and higher cost', 'C: Models stop learning', 'D: Labels become unnecessary'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is cross-validation preferred over a single train-test split?', ARRAY['A: It reduces dataset size', 'B: It provides a more reliable estimate of model performance', 'C: It eliminates overfitting completely', 'D: It speeds up training'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What problem does feature scaling primarily address?', ARRAY['A: Label imbalance', 'B: Different feature value ranges affecting learning', 'C: Missing data', 'D: Overlapping classes'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why can high variance lead to poor generalization?', ARRAY['A: The model ignores training data', 'B: The model is too simple', 'C: The model is overly sensitive to training data noise', 'D: The dataset is too large'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the main purpose of using a confusion matrix?', ARRAY['A: To visualize feature correlations', 'B: To evaluate classification errors by class', 'C: To tune hyperparameters', 'D: To normalize predictions'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is accuracy a poor metric for imbalanced datasets?', ARRAY['A: It cannot be computed efficiently', 'B: It ignores true positives', 'C: It can be misleading due to dominant classes', 'D: It only applies to regression'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the role of a learning rate in gradient descent?', ARRAY['A: Controls the number of features', 'B: Determines the step size during weight updates', 'C: Stops training automatically', 'D: Defines the loss function'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why might increasing model complexity increase overfitting?', ARRAY['A: It reduces training time', 'B: It captures noise along with patterns', 'C: It removes bias', 'D: It improves regularization'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What does bias represent in the bias-variance tradeoff?', ARRAY['A: Sensitivity to training data', 'B: Error from overly complex models', 'C: Error from overly simplistic assumptions', 'D: Random noise in data'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is shuffling data important before training?', ARRAY['A: To reduce dataset size', 'B: To avoid learning order-based patterns', 'C: To increase feature diversity', 'D: To remove duplicates'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What problem does gradient descent aim to solve?', ARRAY['A: Feature selection', 'B: Loss minimization', 'C: Data labeling', 'D: Model deployment'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why are decision trees prone to overfitting?', ARRAY['A: They cannot handle numerical data', 'B: They memorize training data through deep splits', 'C: They require normalization', 'D: They lack loss functions'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the main idea behind ensemble learning?', ARRAY['A: Use one complex model', 'B: Combine multiple models to improve performance', 'C: Reduce dataset size', 'D: Eliminate bias entirely'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why does logistic regression use a sigmoid function?', ARRAY['A: To normalize input features', 'B: To output probabilities between 0 and 1', 'C: To reduce variance', 'D: To increase model depth'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is data leakage?', ARRAY['A: Loss of stored datasets', 'B: Using test data information during training', 'C: Corrupted labels', 'D: Overlapping classes'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is PCA considered an unsupervised technique?', ARRAY['A: It requires labeled data', 'B: It ignores output labels', 'C: It predicts target variables', 'D: It is used only for classification'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the primary drawback of K-Means clustering?', ARRAY['A: High computational cost', 'B: Requires predefined number of clusters', 'C: Cannot handle large datasets', 'D: Produces non-linear boundaries'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is regularization added to the loss function?', ARRAY['A: To increase training accuracy', 'B: To penalize large model weights', 'C: To add more features', 'D: To speed up inference'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What does early stopping prevent?', ARRAY['A: High bias', 'B: Overfitting during training', 'C: Data leakage', 'D: Class imbalance'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why are evaluation metrics task-dependent?', ARRAY['A: All models use the same loss', 'B: Different problems require different performance criteria', 'C: Metrics affect training speed', 'D: Metrics reduce bias'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What issue does class imbalance mainly cause?', ARRAY['A: Higher training speed', 'B: Misleading performance metrics', 'C: Improved recall', 'D: Lower variance'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is feature selection important?', ARRAY['A: It increases dataset size', 'B: It reduces noise and model complexity', 'C: It adds bias', 'D: It guarantees higher accuracy'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What does a high recall indicate?', ARRAY['A: Few false positives', 'B: Few false negatives', 'C: High overall accuracy', 'D: Balanced classes'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is model interpretability important in some applications?', ARRAY['A: It improves training speed', 'B: It helps understand and trust model decisions', 'C: It reduces data size', 'D: It increases accuracy automatically'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the main limitation of increasing training data indefinitely?', ARRAY['A: It always causes overfitting', 'B: Diminishing performance returns and higher cost', 'C: Models stop learning', 'D: Labels become unnecessary'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why does standardizing features often improve the performance of gradient-based algorithms?', ARRAY['A: It removes outliers completely', 'B: It ensures all features contribute equally to gradient updates', 'C: It reduces dataset size', 'D: It converts categorical data automatically'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the main reason a model with low training error can still perform poorly on test data?', ARRAY['A: High bias', 'B: Data leakage', 'C: Overfitting', 'D: Incorrect loss function'], 'C'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why are tree-based models generally insensitive to feature scaling?', ARRAY['A: They rely on distance metrics', 'B: They split data based on feature thresholds', 'C: They normalize data internally', 'D: They only work with categorical data'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the primary goal of hyperparameter tuning?', ARRAY['A: To reduce dataset size', 'B: To optimize model performance without changing learned parameters', 'C: To eliminate bias entirely', 'D: To generate new features'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why can adding irrelevant features degrade model performance?', ARRAY['A: They increase label noise', 'B: They introduce noise and increase variance', 'C: They reduce dataset balance', 'D: They always cause underfitting'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What does a ROC curve primarily illustrate?', ARRAY['A: Training loss over epochs', 'B: Trade-off between true positive rate and false positive rate', 'C: Bias-variance relationship', 'D: Feature importance ranking'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is stratified sampling preferred for classification datasets?', ARRAY['A: It reduces training time', 'B: It preserves class distribution across splits', 'C: It eliminates minority classes', 'D: It increases randomness'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What problem does vanishing gradient mainly cause?', ARRAY['A: Exploding loss values', 'B: Slow or stalled learning in deep networks', 'C: Overfitting in shallow models', 'D: Poor data normalization'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why does dropout help reduce overfitting in neural networks?', ARRAY['A: It increases dataset size', 'B: It prevents co-adaptation of neurons', 'C: It improves feature scaling', 'D: It reduces learning rate automatically'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the main advantage of stochastic gradient descent over batch gradient descent?', ARRAY['A: Guaranteed convergence', 'B: Lower memory usage and faster updates', 'C: Exact loss minimization', 'D: Elimination of local minima'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is one-hot encoding used for categorical variables?', ARRAY['A: To reduce dimensionality', 'B: To avoid implying ordinal relationships', 'C: To improve clustering accuracy', 'D: To normalize numerical values'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What does the term "model capacity" refer to?', ARRAY['A: Dataset size', 'B: Model’s ability to fit a wide range of functions', 'C: Number of training epochs', 'D: Inference speed'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why can label noise negatively impact supervised learning?', ARRAY['A: It improves regularization', 'B: It confuses the learning signal', 'C: It reduces feature variance', 'D: It simplifies decision boundaries'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the primary benefit of using a validation curve?', ARRAY['A: To visualize feature correlations', 'B: To diagnose bias vs variance issues', 'C: To compare different datasets', 'D: To deploy models faster'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why do k-NN models become slower as the dataset grows?', ARRAY['A: They retrain during inference', 'B: They compute distances to many data points', 'C: They require backpropagation', 'D: They rebuild clusters'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What does a high precision score indicate?', ARRAY['A: Few false negatives', 'B: Few false positives', 'C: Balanced class distribution', 'D: High recall'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is reproducibility important in machine learning experiments?', ARRAY['A: It increases model accuracy', 'B: It ensures results can be reliably verified', 'C: It reduces dataset bias', 'D: It eliminates randomness'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the main drawback of increasing the number of features without increasing data size?', ARRAY['A: Lower bias', 'B: Curse of dimensionality', 'C: Improved generalization', 'D: Reduced training time'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why are probabilistic outputs useful in classification models?', ARRAY['A: They remove the need for thresholds', 'B: They allow flexible decision thresholds', 'C: They increase training speed', 'D: They reduce feature count'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What does model calibration assess?', ARRAY['A: Training time efficiency', 'B: How well predicted probabilities reflect true likelihoods', 'C: Feature importance', 'D: Gradient stability'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is random initialization important in neural networks?', ARRAY['A: To reduce dataset bias', 'B: To break symmetry between neurons', 'C: To increase learning rate', 'D: To normalize inputs'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the primary risk of training for too many epochs?', ARRAY['A: Underfitting', 'B: Overfitting', 'C: High bias', 'D: Data leakage'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'Why is feature importance analysis useful?', ARRAY['A: It guarantees higher accuracy', 'B: It helps understand model decisions', 'C: It removes the need for validation', 'D: It automates deployment'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Medium', 'What is the main limitation of supervised learning?', ARRAY['A: Poor performance on large datasets', 'B: Dependence on labeled data', 'C: Inability to generalize', 'D: High computational cost always'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why do deep neural networks often require large amounts of labeled data?', ARRAY['A: They overfit small datasets easily due to high capacity', 'B: They are less sensitive to training data', 'C: They can learn with very few parameters', 'D: They do not benefit from feature scaling'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the vanishing gradient problem in deep networks?', ARRAY['A: Gradients explode during backpropagation', 'B: Gradients become too small, slowing weight updates', 'C: Gradients are inconsistent across layers', 'D: Gradients oscillate indefinitely'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is batch normalization effective in deep learning?', ARRAY['A: It reduces the number of layers required', 'B: It stabilizes learning by normalizing layer inputs', 'C: It eliminates the need for activation functions', 'D: It prevents underfitting entirely'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'In reinforcement learning, what is the difference between on-policy and off-policy algorithms?', ARRAY['A: On-policy learns from actions taken by the target policy, off-policy learns from a different policy', 'B: Off-policy uses supervised learning, on-policy does not', 'C: On-policy requires large datasets, off-policy does not', 'D: Off-policy cannot handle continuous actions'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the purpose of a learning rate scheduler?', ARRAY['A: To change the step size during training for better convergence', 'B: To initialize weights more effectively', 'C: To normalize outputs', 'D: To reduce feature dimensions automatically'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is dropout considered a form of regularization?', ARRAY['A: It adds noise to the input features', 'B: It randomly ignores neurons to prevent co-adaptation', 'C: It reduces the number of layers', 'D: It normalizes gradients automatically'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the main advantage of using residual connections in deep networks?', ARRAY['A: They prevent data leakage', 'B: They allow gradients to flow through deeper layers', 'C: They remove the need for activation functions', 'D: They eliminate the need for normalization'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why can ensemble methods like random forests reduce variance?', ARRAY['A: They train a single complex model', 'B: They average predictions of multiple decorrelated models', 'C: They increase model depth exponentially', 'D: They reduce dataset size'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the difference between L1 and L2 regularization?', ARRAY['A: L1 adds absolute weight penalties, L2 adds squared weight penalties', 'B: L1 reduces overfitting, L2 increases it', 'C: L1 applies only to neural networks, L2 only to linear models', 'D: L1 is probabilistic, L2 is deterministic'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is gradient clipping used in training RNNs?', ARRAY['A: To prevent exploding gradients by limiting their magnitude', 'B: To increase training speed', 'C: To normalize input sequences', 'D: To reduce overfitting'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What does the term ''attention mechanism'' allow a neural network to do?', ARRAY['A: Focus on relevant parts of the input when generating output', 'B: Normalize activations across layers', 'C: Increase model depth without overfitting', 'D: Reduce dimensionality automatically'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is word embedding preferred over one-hot encoding in NLP?', ARRAY['A: Embeddings capture semantic similarity and reduce dimensionality', 'B: One-hot encoding is probabilistic', 'C: Embeddings do not require training', 'D: One-hot encoding works only for images'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the primary reason deep learning models are considered ''black boxes''?', ARRAY['A: Their computations are too slow', 'B: Their decision process is difficult to interpret', 'C: They do not use features', 'D: They only work on small datasets'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'In unsupervised learning, why is clustering evaluation often challenging?', ARRAY['A: True labels may not exist for reference', 'B: Clustering algorithms cannot scale', 'C: Clusters are always uniform', 'D: Feature scaling is unnecessary'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is reinforcement learning often sample inefficient?', ARRAY['A: Rewards are sparse and require many interactions', 'B: It cannot use gradient descent', 'C: It uses labeled datasets only', 'D: It requires very small models'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the benefit of using a policy gradient method over Q-learning?', ARRAY['A: Policy gradients can handle continuous action spaces', 'B: Policy gradients require fewer computations', 'C: Policy gradients are deterministic', 'D: Policy gradients eliminate exploration'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the purpose of a generative adversarial network (GAN)?', ARRAY['A: To classify images into categories', 'B: To generate realistic data using a generator and discriminator', 'C: To reduce overfitting in supervised learning', 'D: To perform feature selection automatically'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why are transformers considered better than RNNs for long sequences?', ARRAY['A: They do not require activation functions', 'B: Self-attention captures long-range dependencies efficiently', 'C: They are shallow networks', 'D: They are probabilistic models'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What does the term ''masking'' achieve in sequence models?', ARRAY['A: It prevents the model from attending to certain positions', 'B: It normalizes input features', 'C: It increases dataset size', 'D: It reduces gradient magnitude'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is reinforcement learning considered a partially supervised learning method?', ARRAY['A: Rewards provide sparse feedback instead of labels for every action', 'B: All states are labeled', 'C: It only works for classification', 'D: It requires supervised pretraining'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is weight initialization critical in deep neural networks?', ARRAY['A: Poor initialization can slow convergence or cause vanishing/exploding gradients', 'B: Initialization determines test data accuracy directly', 'C: Initialization eliminates overfitting', 'D: Initialization reduces feature count'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the primary purpose of the attention mask in transformers?', ARRAY['A: To control which tokens the model attends to during training', 'B: To initialize weights', 'C: To reduce dataset size', 'D: To normalize gradients'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is model calibration important in probabilistic classifiers?', ARRAY['A: It ensures predicted probabilities match observed frequencies', 'B: It increases training speed', 'C: It reduces the need for hyperparameter tuning', 'D: It eliminates overfitting completely'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the key difference between generative and discriminative models?', ARRAY['A: Generative models model joint distribution, discriminative models model conditional distribution', 'B: Generative models require labels, discriminative models do not', 'C: Discriminative models are always neural networks', 'D: Generative models cannot generate samples'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why do RNNs struggle with long-term dependencies?', ARRAY['A: Limited model depth', 'B: Gradients vanish or explode over many timesteps', 'C: They cannot handle numerical data', 'D: They always overfit small datasets'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is the KL divergence used in variational autoencoders (VAEs)?', ARRAY['A: To normalize input features', 'B: To measure how the learned latent distribution diverges from a prior', 'C: To increase model depth', 'D: To reduce dataset size'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the main advantage of using hierarchical clustering over k-means?', ARRAY['A: It automatically determines the number of clusters', 'B: It scales better to large datasets', 'C: It avoids computing distance metrics', 'D: It guarantees linear decision boundaries'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why do convolutional layers reduce the number of parameters compared to fully connected layers?', ARRAY['A: They share weights across spatial locations', 'B: They remove non-linearities', 'C: They use one-hot encoding internally', 'D: They ignore gradients'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the main benefit of using batch size larger than 1 in SGD?', ARRAY['A: It always improves generalization', 'B: It stabilizes gradient estimates by averaging over multiple samples', 'C: It prevents overfitting completely', 'D: It eliminates the need for learning rate tuning'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is the softmax function commonly used in multi-class classification?', ARRAY['A: It ensures outputs sum to 1 and can be interpreted as probabilities', 'B: It normalizes inputs to zero mean', 'C: It increases model capacity', 'D: It eliminates the need for loss functions'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the role of the discriminator in a GAN?', ARRAY['A: To generate new samples', 'B: To distinguish real from generated samples', 'C: To reduce model variance', 'D: To normalize input features'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is the Adam optimizer often preferred over standard SGD?', ARRAY['A: It adapts learning rates for each parameter individually', 'B: It requires no gradients', 'C: It eliminates overfitting entirely', 'D: It does not need mini-batches'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What does ''teacher forcing'' accomplish in training sequence models?', ARRAY['A: It prevents overfitting', 'B: It feeds the actual target token as input during training to improve convergence', 'C: It normalizes gradients', 'D: It reduces model capacity'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is spectral clustering used instead of k-means for some datasets?', ARRAY['A: It can handle non-convex cluster shapes', 'B: It always converges faster', 'C: It requires no distance computation', 'D: It eliminates the need for eigenvalues'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is label smoothing applied in classification tasks?', ARRAY['A: To improve model calibration and reduce overconfidence', 'B: To reduce dataset size', 'C: To increase training loss intentionally', 'D: To remove irrelevant features'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the purpose of positional encoding in transformers?', ARRAY['A: To represent token positions since transformers have no recurrence', 'B: To normalize gradients', 'C: To reduce attention computation', 'D: To increase feature dimension arbitrarily'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is curriculum learning beneficial in some deep learning tasks?', ARRAY['A: It trains on easy examples first, gradually increasing difficulty, improving convergence', 'B: It reduces dataset size', 'C: It increases model capacity automatically', 'D: It eliminates overfitting'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the main advantage of using the ELU activation function over ReLU?', ARRAY['A: It outputs strictly positive values', 'B: It allows negative values to avoid dead neurons', 'C: It eliminates vanishing gradients', 'D: It does not require backpropagation'], 'B'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why are attention heads used in multiple numbers in transformers?', ARRAY['A: To capture different aspects of dependencies in parallel', 'B: To reduce training time linearly', 'C: To normalize token embeddings', 'D: To reduce dataset requirements'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is the ELBO (Evidence Lower Bound) used in variational inference?', ARRAY['A: To maximize likelihood indirectly when exact posterior is intractable', 'B: To reduce model variance', 'C: To initialize weights', 'D: To normalize inputs'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What problem does label propagation aim to solve in semi-supervised learning?', ARRAY['A: Infer labels for unlabeled data using graph structure', 'B: Reduce overfitting in neural networks', 'C: Increase training dataset size artificially', 'D: Normalize continuous features'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why are residual and skip connections important in very deep networks?', ARRAY['A: They prevent vanishing/exploding gradients by allowing shortcuts', 'B: They reduce dataset size', 'C: They eliminate need for normalization', 'D: They reduce the number of parameters drastically'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the main limitation of using k-means on high-dimensional sparse data?', ARRAY['A: Distance metrics become less meaningful due to curse of dimensionality', 'B: Clusters become convex automatically', 'C: Training time is negligible', 'D: No initialization is needed'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is Monte Carlo Dropout used at inference time in Bayesian neural networks?', ARRAY['A: To approximate uncertainty estimates', 'B: To reduce model size', 'C: To speed up predictions', 'D: To avoid gradient computation'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is attention-based masking important in autoregressive sequence generation?', ARRAY['A: To prevent future tokens from being visible during training', 'B: To normalize embeddings', 'C: To reduce sequence length', 'D: To initialize weights'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is label imbalance particularly challenging in probabilistic models?', ARRAY['A: The predicted probabilities can be biased toward majority classes', 'B: It increases learning rate', 'C: It reduces dataset size automatically', 'D: It eliminates the need for cross-validation'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What does the term ''reparameterization trick'' achieve in VAEs?', ARRAY['A: It allows backpropagation through stochastic latent variables', 'B: It normalizes input data', 'C: It eliminates the need for activation functions', 'D: It increases dataset size'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is cosine similarity often used in embeddings instead of Euclidean distance?', ARRAY['A: It measures orientation similarity regardless of magnitude', 'B: It reduces embedding dimension', 'C: It eliminates normalization', 'D: It is computationally more expensive'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why do transformers scale better with parallelization compared to RNNs?', ARRAY['A: They compute all token interactions simultaneously via attention', 'B: They are shallower', 'C: They avoid backpropagation', 'D: They ignore sequence order entirely'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'What is the key difference between deterministic and probabilistic models?', ARRAY['A: Deterministic models produce a single output, probabilistic models estimate output distributions', 'B: Deterministic models require labeled data, probabilistic models do not', 'C: Probabilistic models are always neural networks', 'D: Deterministic models can generate samples'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'AI/ML', 'Hard', 'Why is early stopping combined with patience used in training deep networks?', ARRAY['A: To stop training only when validation does not improve for several epochs, preventing premature stopping', 'B: To increase learning rate gradually', 'C: To eliminate overfitting entirely', 'D: To avoid using a validation set'], 'A'
FROM domains d WHERE d.name = 'AI/ML';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'What is the primary goal of DevOps?', ARRAY['A: To integrate development and operations for faster delivery', 'B: To replace developers with automation', 'C: To eliminate testing entirely', 'D: To reduce the number of servers'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Which of the following is a common version control system used in DevOps?', ARRAY['A: Git', 'B: Jenkins', 'C: Docker', 'D: Kubernetes'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'What does CI/CD stand for?', ARRAY['A: Continuous Integration / Continuous Deployment', 'B: Code Inspection / Code Debugging', 'C: Cloud Infrastructure / Container Deployment', 'D: Continuous Installation / Continuous Documentation'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'What is the purpose of a container in DevOps?', ARRAY['A: To package an application with its dependencies', 'B: To replace virtual machines entirely', 'C: To deploy code only on Windows servers', 'D: To manage version control'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Which tool is commonly used for automating DevOps workflows?', ARRAY['A: Jenkins', 'B: MySQL', 'C: React', 'D: Photoshop'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Why is monitoring important in DevOps?', ARRAY['A: To detect issues and maintain performance in production', 'B: To increase code complexity', 'C: To replace CI/CD pipelines', 'D: To reduce team collaboration'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'What is Infrastructure as Code (IaC)?', ARRAY['A: Managing infrastructure using code and automation', 'B: Writing software without testing', 'C: Storing code in a cloud database', 'D: Deploying only virtual machines manually'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Which tool is primarily used for container orchestration?', ARRAY['A: Kubernetes', 'B: Git', 'C: Ansible', 'D: Terraform'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'What is a common benefit of using DevOps practices?', ARRAY['A: Faster and more reliable software delivery', 'B: Elimination of software testing', 'C: Reduced server uptime', 'D: Manual deployments only'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Which of the following is an example of a configuration management tool?', ARRAY['A: Ansible', 'B: Docker', 'C: Kubernetes', 'D: GitHub'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Why is automated testing important in DevOps?', ARRAY['A: It ensures code changes do not break the application', 'B: It replaces deployment scripts', 'C: It reduces the need for developers', 'D: It increases server costs'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Which of the following is a common DevOps practice?', ARRAY['A: Continuous integration', 'B: Manual deployment only', 'C: Ignoring monitoring', 'D: Developing without version control'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'What is the purpose of a staging environment?', ARRAY['A: To test the application before deploying to production', 'B: To replace production servers', 'C: To manage source code', 'D: To run CI/CD pipelines automatically'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Which DevOps tool is used for automated provisioning and management of cloud infrastructure?', ARRAY['A: Terraform', 'B: Docker', 'C: Kubernetes', 'D: Jenkins'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'What is the main purpose of continuous deployment?', ARRAY['A: Automatically deploying code changes to production', 'B: Manual review of every change before deployment', 'C: Testing code locally only', 'D: Reducing server storage'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Which tool is commonly used for log aggregation and monitoring?', ARRAY['A: ELK Stack (Elasticsearch, Logstash, Kibana)', 'B: React', 'C: Terraform', 'D: Git'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'What is the purpose of load balancing in DevOps?', ARRAY['A: To distribute traffic evenly across servers', 'B: To increase server costs', 'C: To eliminate CI/CD pipelines', 'D: To reduce version control usage'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Why is rollback capability important in deployment?', ARRAY['A: To revert to a previous stable version in case of issues', 'B: To delete old servers automatically', 'C: To increase code complexity', 'D: To replace version control systems'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Which of the following is an example of a cloud service provider?', ARRAY['A: AWS', 'B: Git', 'C: Jenkins', 'D: Docker'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'What is a blue-green deployment strategy?', ARRAY['A: Running two production environments and switching traffic for zero downtime', 'B: Deploying only to green servers', 'C: Using version control branches for testing', 'D: Creating color-coded logs'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'What is the purpose of a CI pipeline?', ARRAY['A: To automatically build, test, and integrate code changes', 'B: To deploy code manually', 'C: To eliminate container usage', 'D: To manage virtual machines'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Why is automation important in DevOps?', ARRAY['A: It reduces manual errors and accelerates software delivery', 'B: It replaces the need for developers', 'C: It increases system downtime', 'D: It eliminates monitoring requirements'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'Which DevOps practice helps in identifying issues early in the development process?', ARRAY['A: Continuous integration', 'B: Manual deployments', 'C: Ignoring logs', 'D: Skipping testing'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Easy', 'What is the role of version control in DevOps?', ARRAY['A: To manage and track changes in code', 'B: To automate server provisioning', 'C: To monitor server performance', 'D: To containerize applications'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'What is the main difference between continuous delivery (CD) and continuous deployment?', ARRAY['A: Continuous delivery requires manual approval before deploying to production, continuous deployment does not', 'B: Continuous deployment is only used in testing environments', 'C: Continuous delivery eliminates version control', 'D: Continuous deployment is slower than continuous delivery'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which configuration management tool uses a declarative language to define infrastructure?', ARRAY['A: Terraform', 'B: Docker', 'C: Jenkins', 'D: Git'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'What is the main purpose of a service mesh in microservices architecture?', ARRAY['A: To manage communication between services and handle traffic, security, and observability', 'B: To deploy containers to cloud platforms', 'C: To replace CI/CD pipelines', 'D: To store logs in a database'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which of the following best describes immutable infrastructure?', ARRAY['A: Servers or containers are replaced rather than modified after deployment', 'B: Infrastructure is automatically scaled up and down', 'C: Servers can be modified during runtime without redeployment', 'D: Applications are built using monolithic architecture'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'What is the difference between blue-green and canary deployment strategies?', ARRAY['A: Blue-green switches traffic entirely, canary gradually shifts a small percentage of traffic to the new version', 'B: Blue-green is slower than canary deployment', 'C: Canary deployment eliminates testing, blue-green does not', 'D: Blue-green uses containers, canary does not'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which of the following is a key advantage of using Docker containers over virtual machines?', ARRAY['A: Containers share the host OS kernel, reducing resource usage', 'B: Containers do not require images', 'C: Containers run slower than VMs', 'D: Containers eliminate the need for orchestration'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'What does Infrastructure as Code (IaC) enable that traditional infrastructure provisioning does not?', ARRAY['A: Automated, reproducible, and version-controlled infrastructure management', 'B: Manual configuration of servers', 'C: Reducing the number of servers', 'D: Eliminating monitoring tools'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which of the following is a common use case for Jenkins pipelines?', ARRAY['A: Automating build, test, and deployment processes', 'B: Managing cloud infrastructure directly', 'C: Hosting containerized applications', 'D: Analyzing log files'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'In a CI/CD pipeline, what is the purpose of artifact storage?', ARRAY['A: To store compiled binaries, Docker images, or packages for later deployment', 'B: To monitor application logs', 'C: To automatically scale servers', 'D: To track version control history'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which of the following best explains the term ''microservices''?', ARRAY['A: Architectural style where applications are composed of small, independent services', 'B: Monolithic applications divided by functions', 'C: Virtual machines hosting multiple services', 'D: Containers without orchestration'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Why is centralized logging important in a DevOps environment?', ARRAY['A: To aggregate logs from multiple services for monitoring, debugging, and analysis', 'B: To reduce server memory usage', 'C: To deploy applications faster', 'D: To eliminate the need for monitoring dashboards'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'What is the primary function of Kubernetes pods?', ARRAY['A: To run one or more tightly coupled containers as a single unit', 'B: To manage version control', 'C: To monitor cloud resources', 'D: To compile application code'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which of the following best describes rolling updates in deployment?', ARRAY['A: Updating applications gradually, replacing instances incrementally without downtime', 'B: Switching all servers simultaneously', 'C: Deploying only to test servers', 'D: Deploying without monitoring'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'What is the role of a reverse proxy in a DevOps setup?', ARRAY['A: To forward client requests to backend servers and provide load balancing and security', 'B: To replace CI/CD pipelines', 'C: To automate infrastructure provisioning', 'D: To store container images'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which of the following is a primary goal of monitoring and observability in DevOps?', ARRAY['A: To track system performance, detect issues, and understand system behavior', 'B: To eliminate testing', 'C: To reduce container usage', 'D: To manually deploy applications'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Why is canary deployment preferred in certain scenarios?', ARRAY['A: It allows testing new changes on a small subset of users before full rollout', 'B: It updates all users simultaneously', 'C: It eliminates the need for automated tests', 'D: It replaces version control systems'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'What is the main advantage of using Helm charts in Kubernetes?', ARRAY['A: They allow packaging, sharing, and managing Kubernetes applications efficiently', 'B: They replace monitoring tools', 'C: They automate server provisioning outside Kubernetes', 'D: They eliminate the need for CI/CD pipelines'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which of the following statements is true about idempotent infrastructure scripts?', ARRAY['A: They can be applied multiple times without changing the system state after the first application', 'B: They only run once and fail on subsequent executions', 'C: They increase the number of servers automatically', 'D: They eliminate CI/CD pipelines'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Why is automated rollback important in deployment pipelines?', ARRAY['A: It quickly reverts to a stable state in case of deployment failure, minimizing downtime', 'B: It prevents container usage', 'C: It replaces CI/CD entirely', 'D: It eliminates monitoring needs'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'What is the purpose of a build artifact repository like Nexus or Artifactory?', ARRAY['A: To store compiled code, libraries, and dependencies for reuse in deployments', 'B: To monitor server performance', 'C: To deploy containers automatically', 'D: To replace CI/CD pipelines'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which type of testing ensures a deployed application functions as expected in the production environment?', ARRAY['A: Smoke testing', 'B: Unit testing', 'C: Static code analysis', 'D: Version control review'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Why is the concept of ''shift-left'' important in DevOps?', ARRAY['A: It encourages testing and quality checks early in the development cycle to catch issues sooner', 'B: It delays testing until deployment', 'C: It reduces the number of servers', 'D: It replaces CI/CD pipelines'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'What is the role of Prometheus in a DevOps environment?', ARRAY['A: Monitoring system metrics and generating alerts', 'B: Deploying containers', 'C: Automating builds', 'D: Managing version control'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which DevOps practice involves automating repetitive tasks to reduce manual intervention?', ARRAY['A: Automation', 'B: Monitoring', 'C: Manual testing', 'D: Version control'], 'A'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which tool can be used for automated configuration management besides Ansible?', ARRAY['A: Photoshop', 'B: Puppet', 'C: MySQL', 'D: Excel'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which CI/CD tool integrates natively with GitHub for automated workflows?', ARRAY['A: Terraform', 'B: Jenkins', 'C: GitHub Actions', 'D: Docker Compose'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which of the following is a purpose of using environment variables in DevOps?', ARRAY['A: To create containers', 'B: To store configuration and secret data outside code', 'C: To deploy servers manually', 'D: To eliminate logging'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which monitoring tool is primarily used for metrics and time-series data?', ARRAY['A: Git', 'B: Prometheus', 'C: Slack', 'D: Jira'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which deployment approach reduces risk by gradually shifting traffic to a new version?', ARRAY['A: Blue-green deployment', 'B: Canary deployment', 'C: Manual deployment', 'D: Staging-only deployment'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which Kubernetes component manages cluster state and schedules workloads?', ARRAY['A: Pod', 'B: Master node', 'C: Container runtime', 'D: Ingress'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which command-line tool can be used to deploy and manage Helm charts in Kubernetes?', ARRAY['A: Terraform', 'B: kubectl', 'C: helm', 'D: Ansible'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which of the following tools can be used for automated container image scanning for vulnerabilities?', ARRAY['A: Git', 'B: Trivy', 'C: Jenkins', 'D: Terraform'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which practice ensures development and operations teams collaborate early in the project?', ARRAY['A: Continuous deployment', 'B: DevOps culture', 'C: Static analysis', 'D: Manual approval'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which tool provides centralized logging and visualization for multiple sources?', ARRAY['A: GitHub', 'B: ELK Stack', 'C: Docker', 'D: Kubernetes'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which deployment strategy is best for minimizing downtime during updates?', ARRAY['A: Manual deployment', 'B: Rolling deployment', 'C: Build-only deployment', 'D: Staging-only deployment'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which DevOps tool allows infrastructure management using Python-based scripts?', ARRAY['A: Kubernetes', 'B: Ansible', 'C: Terraform', 'D: Prometheus'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which method helps reduce downtime by gradually replacing old servers with new ones?', ARRAY['A: Blue-green deployment', 'B: Rolling update', 'C: Manual server replacement', 'D: Full redeployment'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which tool can be used to manage secrets and environment-specific credentials?', ARRAY['A: Docker', 'B: Vault', 'C: Jenkins', 'D: Prometheus'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which type of testing focuses on the overall system behavior in a DevOps pipeline?', ARRAY['A: Unit testing', 'B: Integration testing', 'C: Static code analysis', 'D: Syntax checking'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which container runtime is commonly used with Kubernetes to run containerized applications?', ARRAY['A: Terraform', 'B: Docker', 'C: Jenkins', 'D: Ansible'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which of the following is an IaC tool that uses declarative configuration for cloud resources?', ARRAY['A: Docker', 'B: Terraform', 'C: Prometheus', 'D: Kubernetes'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which tool helps orchestrate containers and manage scaling and networking automatically?', ARRAY['A: Jenkins', 'B: Kubernetes', 'C: Git', 'D: Ansible'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which tool is used to define, preview, and deploy cloud infrastructure as code?', ARRAY['A: Docker', 'B: Terraform', 'C: Prometheus', 'D: GitHub Actions'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which deployment method involves deploying to a small set of servers before the entire fleet?', ARRAY['A: Blue-green', 'B: Canary', 'C: Manual', 'D: Staging-only'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which tool integrates monitoring, alerting, and visualization for metrics in DevOps?', ARRAY['A: Git', 'B: Prometheus', 'C: Docker', 'D: Helm'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which DevOps principle emphasizes quick feedback loops and collaboration?', ARRAY['A: Continuous delivery', 'B: Agile and DevOps culture', 'C: Manual testing', 'D: Version control only'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which strategy allows safe testing of new code in production with limited impact?', ARRAY['A: Blue-green deployment', 'B: Canary release', 'C: Manual rollback', 'D: Staging-only testing'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which of the following tools is commonly used for log aggregation and visualization?', ARRAY['A: Git', 'B: ELK Stack', 'C: Docker', 'D: Helm'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Medium', 'Which concept in DevOps ensures systems are automatically configured and consistent?', ARRAY['A: Manual provisioning', 'B: Configuration management', 'C: Containerization', 'D: Blue-green deployment'], 'B'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'In a microservices architecture, what is the main advantage of using a sidecar pattern?', ARRAY['A: To deploy containers without orchestration', 'B: To eliminate CI/CD pipelines', 'C: To extend and augment service functionality independently of the main application', 'D: To reduce version control usage'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which Kubernetes feature provides dynamic service discovery and load balancing for microservices?', ARRAY['A: ConfigMap', 'B: PersistentVolume', 'C: Service', 'D: Ingress Controller'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'In DevOps, what is the purpose of chaos engineering?', ARRAY['A: To reduce container usage', 'B: To automate deployments', 'C: To intentionally introduce failures to test system resilience', 'D: To eliminate testing in production'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which method in CI/CD pipelines ensures reproducible builds across environments?', ARRAY['A: Manual build scripts', 'B: Ad-hoc deployments', 'C: Immutable build artifacts', 'D: Blue-green deployments'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'What is the purpose of Kubernetes Operators?', ARRAY['A: To replace containers', 'B: To manage source code', 'C: To automate the management of complex applications on Kubernetes using custom resources', 'D: To eliminate monitoring tools'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which of the following best defines a GitOps workflow?', ARRAY['A: Manual deployment of code without version control', 'B: Using CI/CD pipelines without automated testing', 'C: Managing infrastructure and application deployments declaratively through Git repositories', 'D: Deploying containers only on local machines'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which logging practice allows tracing requests across multiple microservices?', ARRAY['A: Local logging', 'B: Manual log collection', 'C: Distributed tracing', 'D: Version-controlled logging'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which container orchestration feature allows rolling back to a previous version without downtime?', ARRAY['A: Pods', 'B: ConfigMaps', 'C: Deployments with revision history', 'D: Persistent volumes'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'What is the primary advantage of using serverless architecture in a DevOps workflow?', ARRAY['A: Manual scaling', 'B: Elimination of containers', 'C: Automatic scaling and reduced operational overhead', 'D: Direct hardware control'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'In a CI/CD pipeline, what is the primary purpose of artifact promotion?', ARRAY['A: To delete old build artifacts', 'B: To store logs for debugging', 'C: To move tested and verified build artifacts from one environment to another', 'D: To monitor server performance'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which DevOps approach helps in automatically remediating failures and maintaining system health?', ARRAY['A: Manual rollback', 'B: Monitoring only', 'C: Self-healing systems', 'D: Staging-only deployments'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which concept in Kubernetes ensures applications maintain the desired number of replicas automatically?', ARRAY['A: ConfigMap', 'B: PersistentVolumeClaim', 'C: ReplicaSet', 'D: Ingress'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which method ensures secure secret management in automated DevOps pipelines?', ARRAY['A: Storing secrets in plain text', 'B: Embedding secrets in code', 'C: Using secret management tools like Vault or AWS Secrets Manager', 'D: Sharing secrets via email'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'In a microservices environment, what is the key benefit of implementing circuit breakers?', ARRAY['A: To deploy services faster', 'B: To eliminate container orchestration', 'C: To prevent cascading failures when a service becomes unavailable', 'D: To store logs'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which approach allows canary releases to safely test a new version under real user conditions?', ARRAY['A: Manual testing only', 'B: Full deployment to production', 'C: Routing a small percentage of traffic to the new version', 'D: Blue-green switching immediately'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which observability pillar focuses on understanding the internal state of a system through metrics?', ARRAY['A: Logging', 'B: Tracing', 'C: Metrics', 'D: Deployment'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which approach in CI/CD reduces risk by using the same pipeline for testing and production deployments?', ARRAY['A: Separate pipelines', 'B: Manual deployment', 'C: Pipeline promotion', 'D: Local builds'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'What is the main purpose of Kubernetes StatefulSets?', ARRAY['A: To deploy stateless web apps', 'B: To replace ReplicaSets entirely', 'C: To manage stateful applications requiring stable network IDs and storage', 'D: To monitor container logs'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which type of testing simulates failures to validate the resiliency of a DevOps system?', ARRAY['A: Unit testing', 'B: Integration testing', 'C: Chaos testing', 'D: Static code analysis'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which Kubernetes feature allows controlling traffic routing between multiple versions of a service?', ARRAY['A: Pod', 'B: ConfigMap', 'C: Ingress with weighted routing', 'D: ServiceAccount'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which type of deployment minimizes downtime while ensuring rollback capability?', ARRAY['A: Manual deployment', 'B: Staging-only deployment', 'C: Rolling deployment', 'D: Local testing'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which tool is commonly used to monitor container metrics and health in Kubernetes?', ARRAY['A: Git', 'B: Jenkins', 'C: Prometheus', 'D: Terraform'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which deployment approach allows incremental testing and fast rollback if issues are detected?', ARRAY['A: Manual deployment', 'B: Blue-green only', 'C: Canary deployment', 'D: Local build'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which DevOps practice ensures that all infrastructure changes are version-controlled and auditable?', ARRAY['A: Manual provisioning', 'B: Continuous monitoring', 'C: Infrastructure as Code (IaC)', 'D: Containerization only'], 'C'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which Kubernetes resource manages network policies to control traffic flow between pods?', ARRAY['A: ConfigMap', 'B: ReplicaSet', 'C: Deployment', 'D: NetworkPolicy'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which DevOps approach focuses on capturing system behavior across microservices for debugging and observability?', ARRAY['A: CI/CD', 'B: Configuration management', 'C: Containerization', 'D: Distributed tracing'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'What is the primary purpose of Helm in Kubernetes?', ARRAY['A: Container runtime', 'B: Monitoring system metrics', 'C: Load balancing', 'D: Package, configure, and deploy Kubernetes applications'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which CI/CD practice ensures that only tested and verified code reaches production?', ARRAY['A: Manual testing', 'B: Ad-hoc deployments', 'C: Local builds', 'D: Automated promotion and gating'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which Kubernetes object allows running scheduled tasks similar to cron jobs?', ARRAY['A: Pod', 'B: Service', 'C: Deployment', 'D: CronJob'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which method provides high availability for applications by distributing traffic across multiple instances?', ARRAY['A: Blue-green deployment', 'B: Canary deployment', 'C: Manual scaling', 'D: Load balancing'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which approach in DevOps ensures infrastructure consistency across environments using version-controlled code?', ARRAY['A: Manual provisioning', 'B: Ad-hoc scripts', 'C: Manual server updates', 'D: Infrastructure as Code (IaC)'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which Kubernetes component is responsible for storing cluster state and coordinating workloads?', ARRAY['A: Pod', 'B: ReplicaSet', 'C: Service', 'D: etcd'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which practice improves system resilience by automatically detecting and recovering from failures?', ARRAY['A: Manual monitoring', 'B: Static analysis', 'C: Ad-hoc scripting', 'D: Self-healing systems'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which tool can automate deployment, scaling, and management of containerized applications?', ARRAY['A: Terraform', 'B: Ansible', 'C: Prometheus', 'D: Kubernetes'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which strategy ensures that a failing deployment does not impact all users immediately?', ARRAY['A: Blue-green', 'B: Manual deployment', 'C: Local testing', 'D: Canary deployment'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which type of storage in Kubernetes persists data beyond the life of individual pods?', ARRAY['A: ConfigMap', 'B: Secrets', 'C: Pods', 'D: PersistentVolume'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which DevOps practice reduces deployment errors by running all tests in isolated and reproducible environments?', ARRAY['A: Manual testing', 'B: Static code analysis', 'C: Ad-hoc scripts', 'D: Automated containerized testing'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which Kubernetes object routes external traffic to internal services?', ARRAY['A: Pod', 'B: ConfigMap', 'C: Deployment', 'D: Ingress'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which approach allows developers to deploy changes without manual intervention, ensuring consistent delivery?', ARRAY['A: Manual release', 'B: Ad-hoc deployment', 'C: Local build only', 'D: Continuous deployment'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which technique ensures a new software release does not affect the live system until fully validated?', ARRAY['A: Manual rollback', 'B: Staging-only deployment', 'C: Local testing', 'D: Blue-green deployment'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which tool is used to centrally manage secrets, credentials, and encryption keys in a DevOps pipeline?', ARRAY['A: Docker', 'B: Jenkins', 'C: Terraform', 'D: Vault'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which Kubernetes controller ensures that the desired number of pod replicas are always running?', ARRAY['A: ConfigMap', 'B: Ingress', 'C: Service', 'D: ReplicaSet'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which method allows testing new features in production for a subset of users while minimizing impact?', ARRAY['A: Manual testing', 'B: Full deployment', 'C: Blue-green switching immediately', 'D: Canary release'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which DevOps practice allows rollback and version tracking of infrastructure alongside application code?', ARRAY['A: Manual server updates', 'B: Ad-hoc scripting', 'C: Local builds', 'D: Infrastructure as Code (IaC)'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which approach in CI/CD pipelines automatically triggers deployments after a successful build and test?', ARRAY['A: Manual deployment', 'B: Staging-only deployment', 'C: Local testing', 'D: Continuous deployment'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which tool is commonly used for monitoring, alerting, and metric collection in a Kubernetes cluster?', ARRAY['A: Git', 'B: Terraform', 'C: Docker', 'D: Prometheus'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which deployment strategy ensures minimal downtime and provides a safe rollback option?', ARRAY['A: Manual deployment', 'B: Staging-only deployment', 'C: Local testing', 'D: Rolling deployment'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which practice enables capturing real-time metrics, logs, and traces to improve system reliability?', ARRAY['A: Manual testing', 'B: Unit testing', 'C: Ad-hoc monitoring', 'D: Observability'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'DevOps', 'Hard', 'Which Kubernetes feature allows dynamic adjustment of resources based on CPU or memory utilization?', ARRAY['A: ConfigMap', 'B: ReplicaSet', 'C: Ingress', 'D: Horizontal Pod Autoscaler'], 'D'
FROM domains d WHERE d.name = 'DevOps';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which of the following is a common type of supervised learning problem?', ARRAY['A: Regression', 'B: Clustering', 'C: Dimensionality reduction', 'D: Association rule mining'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which library in Python is commonly used for data manipulation and analysis?', ARRAY['A: Matplotlib', 'B: Seaborn', 'C: Pandas', 'D: NumPy'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which type of chart is most suitable for showing proportions of a whole?', ARRAY['A: Histogram', 'B: Line chart', 'C: Scatter plot', 'D: Pie chart'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which metric measures the average squared difference between predicted and actual values?', ARRAY['A: Accuracy', 'B: Precision', 'C: Mean Squared Error', 'D: Recall'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which technique is used to reduce the number of features in a dataset while retaining most information?', ARRAY['A: One-hot encoding', 'B: Standardization', 'C: Dimensionality reduction', 'D: Data augmentation'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which of the following is a Python library used for creating visualizations?', ARRAY['A: Pandas', 'B: NumPy', 'C: Matplotlib', 'D: Scikit-learn'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which of these is a common measure of central tendency?', ARRAY['A: Variance', 'B: Mean', 'C: Correlation', 'D: Covariance'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which type of learning involves discovering patterns in unlabeled data?', ARRAY['A: Supervised learning', 'B: Semi-supervised learning', 'C: Reinforcement learning', 'D: Unsupervised learning'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which algorithm is commonly used for classification problems?', ARRAY['A: Linear Regression', 'B: Decision Tree', 'C: PCA', 'D: K-means'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which of the following is a way to handle missing data in datasets?', ARRAY['A: Imputation', 'B: Clustering', 'C: One-hot encoding', 'D: Normalization'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which metric is commonly used to evaluate classification models?', ARRAY['A: Mean Squared Error', 'B: Accuracy', 'C: Variance', 'D: Covariance'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which technique scales features to a standard range, often zero mean and unit variance?', ARRAY['A: Normalization', 'B: Discretization', 'C: Standardization', 'D: Encoding'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which type of plot shows the distribution of a single numerical variable?', ARRAY['A: Scatter plot', 'B: Histogram', 'C: Line chart', 'D: Box plot'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which Python library provides tools for machine learning algorithms?', ARRAY['A: NumPy', 'B: Matplotlib', 'C: Scikit-learn', 'D: Seaborn'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which measure indicates how spread out the values are around the mean?', ARRAY['A: Mean', 'B: Median', 'C: Variance', 'D: Mode'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which of these is a common unsupervised learning algorithm?', ARRAY['A: Decision Tree', 'B: Linear Regression', 'C: K-means clustering', 'D: Logistic Regression'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which evaluation metric is appropriate for regression problems?', ARRAY['A: Accuracy', 'B: Precision', 'C: Mean Absolute Error', 'D: Recall'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which data type is most commonly used for categorical variables?', ARRAY['A: Integer', 'B: Float', 'C: String', 'D: Boolean'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which method splits data into training and testing sets?', ARRAY['A: Data imputation', 'B: Data splitting', 'C: Feature scaling', 'D: Encoding'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which of these plots is best for visualizing the relationship between two numerical variables?', ARRAY['A: Histogram', 'B: Bar chart', 'C: Scatter plot', 'D: Pie chart'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which of the following is a technique to reduce overfitting in machine learning models?', ARRAY['A: Increasing features', 'B: Adding more noise', 'C: Regularization', 'D: Ignoring validation set'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which method converts categorical variables into numerical format for machine learning?', ARRAY['A: Dimensionality reduction', 'B: Imputation', 'C: One-hot encoding', 'D: Normalization'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which library provides high-performance arrays and matrix operations in Python?', ARRAY['A: Pandas', 'B: Scikit-learn', 'C: NumPy', 'D: Matplotlib'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Easy', 'Which plot shows quartiles, median, and potential outliers for a dataset?', ARRAY['A: Histogram', 'B: Line chart', 'C: Scatter plot', 'D: Box plot'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which technique is primarily used to handle multicollinearity in regression models?', ARRAY['A: Principal Component Analysis', 'B: Decision Trees', 'C: K-means clustering', 'D: Random Sampling'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which algorithm is best suited for predicting continuous numerical values?', ARRAY['A: Linear Regression', 'B: K-Nearest Neighbors Classification', 'C: Apriori Algorithm', 'D: DBSCAN'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which evaluation metric is suitable for imbalanced classification datasets?', ARRAY['A: Accuracy', 'B: F1 Score', 'C: Mean Squared Error', 'D: R-squared'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which ensemble technique combines multiple weak learners sequentially to improve performance?', ARRAY['A: Random Forest', 'B: Boosting', 'C: Bagging', 'D: PCA'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which method is commonly used to prevent overfitting in decision trees?', ARRAY['A: Pruning', 'B: Increasing tree depth', 'C: Standardization', 'D: One-hot encoding'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which distance metric is typically used in K-Nearest Neighbors?', ARRAY['A: Euclidean Distance', 'B: Cosine Similarity', 'C: Manhattan Distance', 'D: Jaccard Index'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which technique can be used to reduce variance in machine learning models?', ARRAY['A: Feature Selection', 'B: Bagging', 'C: Overfitting', 'D: Data Augmentation'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which unsupervised algorithm is sensitive to the scale of features?', ARRAY['A: DBSCAN', 'B: K-means clustering', 'C: Decision Tree', 'D: Random Forest'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which regularization technique penalizes the absolute value of coefficients?', ARRAY['A: Lasso Regression', 'B: Ridge Regression', 'C: Elastic Net', 'D: Polynomial Regression'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which approach is used for text feature extraction in NLP?', ARRAY['A: TF-IDF', 'B: PCA', 'C: One-hot encoding', 'D: Linear Regression'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which metric evaluates the distance between predicted probabilities and actual labels in classification?', ARRAY['A: Cross-Entropy Loss', 'B: Mean Absolute Error', 'C: R-squared', 'D: Variance'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which technique reduces the effect of outliers by ranking values rather than using raw numbers?', ARRAY['A: Normalization', 'B: Robust Scaling', 'C: Standardization', 'D: Min-Max Scaling'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which algorithm is suitable for modeling non-linear decision boundaries?', ARRAY['A: Logistic Regression', 'B: Support Vector Machine with RBF kernel', 'C: Linear Regression', 'D: PCA'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which method splits a dataset multiple times to reduce variance in model evaluation?', ARRAY['A: Train-Test Split', 'B: Cross-Validation', 'C: Stratification', 'D: Data Imputation'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which technique reduces high-dimensional data while preserving as much variance as possible?', ARRAY['A: Linear Regression', 'B: Principal Component Analysis', 'C: Decision Tree', 'D: Random Forest'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which metric measures the proportion of true positives among all predicted positives?', ARRAY['A: Accuracy', 'B: Precision', 'C: Recall', 'D: R-squared'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which technique mitigates overfitting by adding noise to the training process?', ARRAY['A: Dropout', 'B: Regularization', 'C: PCA', 'D: Feature Scaling'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which algorithm is used to group similar items without predefined labels?', ARRAY['A: K-means clustering', 'B: Linear Regression', 'C: Logistic Regression', 'D: Decision Tree'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which evaluation method is preferred for imbalanced datasets?', ARRAY['A: Accuracy', 'B: F1 Score', 'C: Mean Squared Error', 'D: R-squared'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which technique transforms categorical variables into numerical format by assigning sequential integers?', ARRAY['A: Label Encoding', 'B: One-hot encoding', 'C: PCA', 'D: Scaling'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which method evaluates model performance by repeatedly splitting data and averaging metrics?', ARRAY['A: Train-Test Split', 'B: K-Fold Cross Validation', 'C: Stratified Sampling', 'D: Bootstrap Sampling'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which ensemble method combines predictions by taking the majority vote of multiple classifiers?', ARRAY['A: Boosting', 'B: Bagging', 'C: PCA', 'D: Random Forest Voting'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which technique prevents overfitting by constraining model complexity through penalty terms?', ARRAY['A: Regularization', 'B: Feature Scaling', 'C: Clustering', 'D: Standardization'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which distance measure is used in hierarchical clustering to compute the similarity between clusters?', ARRAY['A: Euclidean Distance', 'B: Ward''s Method', 'C: Manhattan Distance', 'D: Cosine Similarity'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which algorithm is most suitable for dimensionality reduction while preserving maximum variance?', ARRAY['A: Linear Regression', 'B: Decision Tree', 'C: Principal Component Analysis', 'D: K-means clustering'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which clustering algorithm can detect clusters of arbitrary shape?', ARRAY['A: K-means', 'B: Hierarchical Clustering', 'C: DBSCAN', 'D: Agglomerative Clustering'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which method is used to handle imbalanced classification datasets by adjusting sample weights?', ARRAY['A: Data Augmentation', 'B: Normalization', 'C: Class Weighting', 'D: Feature Scaling'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which evaluation metric considers both precision and recall?', ARRAY['A: Mean Absolute Error', 'B: R-squared', 'C: F1 Score', 'D: Mean Squared Error'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which technique reduces overfitting in neural networks by randomly ignoring neurons during training?', ARRAY['A: Normalization', 'B: Standardization', 'C: Dropout', 'D: Feature Scaling'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which method partitions data into k subsets for multiple rounds of training and testing?', ARRAY['A: Train-Test Split', 'B: Bootstrapping', 'C: K-Fold Cross Validation', 'D: Label Encoding'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which algorithm is commonly used for anomaly detection in high-dimensional data?', ARRAY['A: Decision Tree', 'B: Linear Regression', 'C: Isolation Forest', 'D: Random Forest'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which method is used to reduce the impact of multicollinearity in regression?', ARRAY['A: Standardization', 'B: Normalization', 'C: Ridge Regression', 'D: Lasso Regression'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which approach is best for extracting topics from large text corpora?', ARRAY['A: TF-IDF', 'B: Word2Vec', 'C: Latent Dirichlet Allocation', 'D: One-hot Encoding'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which ensemble technique sequentially focuses on misclassified examples?', ARRAY['A: Random Forest', 'B: Bagging', 'C: Boosting', 'D: Stacking'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which method evaluates model stability by training on bootstrapped samples?', ARRAY['A: Cross-validation', 'B: Train-Test Split', 'C: Bootstrap Aggregation', 'D: K-Fold Validation'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which method ensures that data from different scales contributes equally to distance-based models?', ARRAY['A: One-hot Encoding', 'B: Label Encoding', 'C: Feature Scaling', 'D: Dimensionality Reduction'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which technique reduces model complexity by adding a penalty term proportional to the sum of squared coefficients?', ARRAY['A: Lasso Regression', 'B: Decision Tree', 'C: Ridge Regression', 'D: Linear Regression'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which evaluation metric is suitable for regression when errors are heavily penalized for large deviations?', ARRAY['A: Mean Absolute Error', 'B: R-squared', 'C: Mean Squared Error', 'D: F1 Score'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which method is used to group similar data points while minimizing intra-cluster distance?', ARRAY['A: Linear Regression', 'B: Decision Tree', 'C: K-means Clustering', 'D: Hierarchical Clustering'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which metric measures the proportion of true positives identified correctly among all positives?', ARRAY['A: Accuracy', 'B: R-squared', 'C: Recall', 'D: Precision'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which dimensionality reduction technique combines L1 and L2 penalties?', ARRAY['A: Ridge Regression', 'B: Lasso Regression', 'C: Elastic Net', 'D: PCA'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which clustering algorithm merges clusters iteratively based on distance?', ARRAY['A: K-means', 'B: DBSCAN', 'C: Hierarchical Agglomerative Clustering', 'D: Isolation Forest'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which method reduces variance by combining multiple models and taking a weighted vote?', ARRAY['A: Boosting', 'B: Bagging', 'C: Stacking', 'D: Random Forest Voting'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which technique is used to balance bias and variance by adding a penalty term to the loss function?', ARRAY['A: Standardization', 'B: Normalization', 'C: Regularization', 'D: Feature Scaling'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which method detects hierarchical structure in data by merging or splitting clusters?', ARRAY['A: K-means', 'B: DBSCAN', 'C: Hierarchical Clustering', 'D: PCA'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which algorithm is used to rank features based on importance for model prediction?', ARRAY['A: PCA', 'B: K-means', 'C: Random Forest Feature Importance', 'D: Gradient Boosting Feature Importance'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which model evaluation method repeatedly splits data to provide robust performance metrics?', ARRAY['A: Train-Test Split', 'B: Bootstrap Sampling', 'C: Cross-Validation', 'D: Stratified Sampling'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which technique can reduce the number of correlated features while retaining important information?', ARRAY['A: Label Encoding', 'B: Normalization', 'C: Principal Component Analysis', 'D: Regularization'], 'C'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Medium', 'Which metric evaluates the agreement between predicted and actual rankings in recommendation systems?', ARRAY['A: Mean Squared Error', 'B: R-squared', 'C: Spearman''s Rank Correlation', 'D: F1 Score'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which deep learning architecture is most suitable for sequential data and time series forecasting?', ARRAY['A: Convolutional Neural Network', 'B: Autoencoder', 'C: Feedforward Neural Network', 'D: Recurrent Neural Network'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method is commonly used to interpret black-box models by approximating local behavior?', ARRAY['A: PCA', 'B: t-SNE', 'C: SHAP Global Analysis', 'D: LIME'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which generative model learns the probability distribution of input data for generating new samples?', ARRAY['A: Random Forest', 'B: K-means Clustering', 'C: Decision Tree', 'D: Variational Autoencoder'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which optimization algorithm adapts learning rates individually for each parameter during training?', ARRAY['A: SGD', 'B: Momentum', 'C: RMSProp without correction', 'D: Adam'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which technique is used to handle concept drift in streaming data models?', ARRAY['A: K-fold Cross Validation', 'B: PCA', 'C: Bagging', 'D: Online Learning'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method is used for generating adversarial examples to test model robustness?', ARRAY['A: Data Augmentation', 'B: Dropout', 'C: Bagging', 'D: FGSM (Fast Gradient Sign Method)'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which algorithm is widely used for dimensionality reduction in high-dimensional sparse data?', ARRAY['A: Linear Regression', 'B: Decision Trees', 'C: K-means Clustering', 'D: Truncated SVD'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method estimates uncertainty in deep neural network predictions?', ARRAY['A: Regularization', 'B: Dropout without Monte Carlo', 'C: PCA', 'D: Bayesian Neural Networks'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which loss function is specifically designed for multi-class classification in neural networks?', ARRAY['A: Mean Squared Error', 'B: Hinge Loss', 'C: MAE', 'D: Categorical Cross-Entropy'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method is used to compress large neural networks while retaining accuracy?', ARRAY['A: Data Normalization', 'B: Batch Normalization', 'C: Dropout', 'D: Model Pruning'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which algorithm is suitable for modeling long-term dependencies in sequences better than vanilla RNNs?', ARRAY['A: Feedforward Neural Network', 'B: GRU without gates', 'C: CNN', 'D: LSTM'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which technique combines predictions from multiple models to reduce bias and variance simultaneously?', ARRAY['A: Bagging only', 'B: Boosting only', 'C: Stacking without meta-model', 'D: Stacking Ensemble'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method is used to compute Shapley values for explaining model predictions?', ARRAY['A: Gradient Descent', 'B: Random Sampling', 'C: PCA', 'D: Game Theory'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which technique allows neural networks to focus on important parts of the input sequence?', ARRAY['A: Dropout', 'B: Batch Normalization', 'C: Regularization', 'D: Attention Mechanism'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method is used to augment data in image recognition tasks to improve generalization?', ARRAY['A: Standardization', 'B: Min-Max Scaling', 'C: Normalization', 'D: Image Augmentation'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which approach adapts the learning process to data arriving in real-time for online updates?', ARRAY['A: Batch Learning', 'B: Offline Training', 'C: K-Fold Cross Validation', 'D: Online Learning'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which technique modifies gradient descent to escape local minima in deep learning?', ARRAY['A: Standard Gradient Descent', 'B: Momentum only', 'C: Batch Normalization', 'D: Stochastic Gradient Descent with Momentum'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which model is commonly used for sequence-to-sequence tasks like translation?', ARRAY['A: Feedforward Neural Network', 'B: Convolutional Network', 'C: Random Forest', 'D: Seq2Seq RNN'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which technique helps deep networks converge faster by normalizing activations across a mini-batch?', ARRAY['A: Dropout', 'B: Weight Decay', 'C: Regularization', 'D: Batch Normalization'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which approach estimates uncertainty by performing multiple forward passes with dropout enabled?', ARRAY['A: Standard Inference', 'B: Weight Decay', 'C: L2 Regularization', 'D: Monte Carlo Dropout'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which algorithm reduces variance by fitting successive models to residuals of previous models?', ARRAY['A: Random Forest', 'B: Bagging', 'C: K-means', 'D: Gradient Boosting'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method converts high-dimensional vectors into low-dimensional embeddings preserving relationships?', ARRAY['A: Standardization', 'B: Normalization', 'C: PCA only', 'D: t-SNE'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which approach ensures interpretability by approximating complex model outputs using simple models?', ARRAY['A: Bagging', 'B: Boosting', 'C: Random Forest Feature Importance', 'D: Surrogate Model Explanation'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which regularization method penalizes large weights using the L2 norm?', ARRAY['A: L1 Regularization', 'B: Dropout', 'C: Elastic Net', 'D: Ridge Regression'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which model architecture is designed for graph-structured data like social networks?', ARRAY['A: RNN', 'B: CNN', 'C: LSTM', 'D: Graph Neural Network'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which technique is used to approximate the posterior distribution in Bayesian neural networks?', ARRAY['A: Variational Inference', 'B: Markov Chain Monte Carlo', 'C: Principal Component Analysis', 'D: Laplace Approximation'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which optimization method helps escape saddle points in deep learning?', ARRAY['A: Stochastic Gradient Descent', 'B: Adam', 'C: Linear Regression', 'D: RMSProp'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which algorithm is best suited for modeling non-linear relationships in high-dimensional data?', ARRAY['A: Support Vector Machine with RBF Kernel', 'B: Decision Trees', 'C: Linear Regression', 'D: Gradient Boosting'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method reduces overfitting in ensemble models by combining predictions from multiple learners?', ARRAY['A: Bagging', 'B: Boosting', 'C: Regularization', 'D: Stacking'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method allows deep networks to focus on the most relevant features for sequence tasks?', ARRAY['A: Convolutional Layers', 'B: Attention Mechanism', 'C: Dropout', 'D: Residual Connections'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which algorithm uses residual learning to improve training of very deep neural networks?', ARRAY['A: ResNet', 'B: DenseNet', 'C: VGGNet', 'D: Highway Networks'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which technique is used to interpret individual predictions of complex black-box models?', ARRAY['A: LIME', 'B: SHAP', 'C: PCA', 'D: Partial Dependence Plots'], 'B'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which generative model is designed to produce realistic images using two adversarial networks?', ARRAY['A: Variational Autoencoder', 'B: GAN', 'C: Feedforward Neural Network', 'D: Conditional GAN'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method is used to reduce variance in predictions by averaging outputs of multiple models trained on different subsets?', ARRAY['A: Bagging', 'B: Boosting', 'C: Stacking', 'D: Random Forest'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which optimization technique combines momentum and adaptive learning rates for faster convergence?', ARRAY['A: SGD', 'B: Adam', 'C: RMSProp', 'D: Nadam'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which algorithm is preferred for detecting outliers in high-dimensional datasets?', ARRAY['A: Isolation Forest', 'B: One-Class SVM', 'C: DBSCAN', 'D: Local Outlier Factor'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which technique improves gradient flow and prevents vanishing gradients in deep neural networks?', ARRAY['A: Residual Connections', 'B: Dropout', 'C: Batch Normalization', 'D: Layer Normalization'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method approximates feature importance by measuring the effect of permuted inputs on model predictions?', ARRAY['A: Permutation Importance', 'B: SHAP Values', 'C: LIME', 'D: Partial Dependence'], 'A'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which approach is used to train models on streaming data without storing all historical data?', ARRAY['A: Batch Learning', 'B: Mini-batch Learning', 'C: K-Fold Cross Validation', 'D: Online Learning'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which algorithm sequentially fits models to residuals to improve prediction accuracy?', ARRAY['A: Random Forest', 'B: Bagging', 'C: Linear Regression', 'D: Gradient Boosting'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method generates embeddings that preserve distances between high-dimensional points in low dimensions?', ARRAY['A: PCA', 'B: Autoencoder', 'C: t-SNE', 'D: UMAP'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which technique is used to prevent overfitting by penalizing large weights using the L1 norm?', ARRAY['A: Lasso Regularization', 'B: Ridge Regularization', 'C: Elastic Net', 'D: L1 Regularization'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which neural network architecture is designed to capture dependencies across graph-structured data?', ARRAY['A: LSTM', 'B: RNN', 'C: CNN', 'D: Graph Neural Network'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method measures the impact of removing one feature at a time on model performance?', ARRAY['A: SHAP Values', 'B: Permutation Importance', 'C: Partial Dependence', 'D: Leave-One-Feature-Out'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which approach estimates predictive uncertainty using multiple forward passes with stochastic dropout?', ARRAY['A: Monte Carlo Dropout', 'B: Ensemble Averaging', 'C: Bayesian Approximation', 'D: MC Dropout'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which generative model uses an encoder-decoder structure to model the latent probability distribution?', ARRAY['A: GAN', 'B: Autoencoder', 'C: Feedforward Network', 'D: Variational Autoencoder'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which ensemble method combines models with different architectures to improve prediction performance?', ARRAY['A: Bagging', 'B: Boosting', 'C: Stacking without meta-model', 'D: Stacking with meta-model'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which optimization algorithm incorporates adaptive learning rates and momentum for efficient deep learning training?', ARRAY['A: SGD', 'B: RMSProp', 'C: Adagrad', 'D: Adam'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which method is used to handle missing data by imputing values based on k-nearest neighbors?', ARRAY['A: Mean Imputation', 'B: Regression Imputation', 'C: Median Imputation', 'D: KNN Imputation'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Data Science', 'Hard', 'Which architecture uses self-attention mechanisms to model long-range dependencies in sequences?', ARRAY['A: LSTM', 'B: RNN', 'C: CNN', 'D: Transformer'], 'D'
FROM domains d WHERE d.name = 'Data Science';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What is the primary goal of software engineering?', ARRAY['A: Writing code as quickly as possible', 'B: Developing reliable and maintainable software', 'C: Eliminating the need for documentation', 'D: Avoiding testing activities'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What does a software requirement describe?', ARRAY['A: How the software is coded', 'B: What the software should do', 'C: Which programming language is used', 'D: How fast developers write code'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'Which phase comes first in the traditional software development life cycle?', ARRAY['A: Implementation', 'B: Testing', 'C: Requirements analysis', 'D: Maintenance'], 'C'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What is the main purpose of software documentation?', ARRAY['A: Increase development cost', 'B: Help users and developers understand the system', 'C: Replace source code', 'D: Slow down development'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'Which role is primarily responsible for gathering requirements from stakeholders?', ARRAY['A: Tester', 'B: System analyst', 'C: Database administrator', 'D: UI designer'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What does SDLC stand for?', ARRAY['A: Software Design Logic Code', 'B: System Development Life Cycle', 'C: Software Development Life Cycle', 'D: Structured Development Level Control'], 'C'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What is a bug in software?', ARRAY['A: A feature request', 'B: A syntax style', 'C: An error or defect in the program', 'D: A documentation tool'], 'C'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'Which activity ensures software works as intended?', ARRAY['A: Design', 'B: Testing', 'C: Deployment', 'D: Requirement gathering'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What is software maintenance?', ARRAY['A: Writing new software from scratch', 'B: Updating and fixing software after release', 'C: Removing old software permanently', 'D: Testing unfinished features'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'Which artifact describes how a system will be built?', ARRAY['A: Requirement specification', 'B: Design document', 'C: Test report', 'D: User manual'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What is the main focus of version control systems?', ARRAY['A: Code execution', 'B: Tracking and managing code changes', 'C: Testing automation', 'D: User authentication'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'Which term refers to fixing errors after deployment?', ARRAY['A: Verification', 'B: Validation', 'C: Corrective maintenance', 'D: Refactoring'], 'C'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What does modularity in software design promote?', ARRAY['A: Tight coupling', 'B: Single large codebase', 'C: Separation into independent components', 'D: Elimination of documentation'], 'C'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'Which activity focuses on confirming requirements with stakeholders?', ARRAY['A: Validation', 'B: Compilation', 'C: Debugging', 'D: Refactoring'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What is the primary responsibility of a software tester?', ARRAY['A: Writing requirements', 'B: Finding defects in the software', 'C: Managing databases', 'D: Deploying servers'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What does reusability in software mean?', ARRAY['A: Deleting old code', 'B: Using components in multiple systems', 'C: Avoiding documentation', 'D: Writing platform-specific code'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'Which model follows a sequential development approach?', ARRAY['A: Agile', 'B: Spiral', 'C: Waterfall', 'D: DevOps'], 'C'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What is the purpose of code reviews?', ARRAY['A: Increase execution speed', 'B: Identify defects and improve code quality', 'C: Replace testing', 'D: Reduce documentation'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'Which term describes how easily software can be modified?', ARRAY['A: Portability', 'B: Usability', 'C: Maintainability', 'D: Reliability'], 'C'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What is a functional requirement?', ARRAY['A: A hardware specification', 'B: A description of system behavior', 'C: A performance constraint', 'D: A deployment strategy'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What does debugging involve?', ARRAY['A: Writing new features', 'B: Identifying and fixing errors', 'C: Deploying software', 'D: Collecting requirements'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'Which document defines system requirements formally?', ARRAY['A: User manual', 'B: Software Requirements Specification', 'C: Test plan', 'D: Source code'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What is the main goal of software testing?', ARRAY['A: Prove the software has no defects', 'B: Identify defects and ensure quality', 'C: Increase development speed', 'D: Replace documentation'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Easy', 'What does portability refer to in software?', ARRAY['A: Ease of use', 'B: Ability to run on different platforms', 'C: Execution speed', 'D: Security level'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the main limitation of the Waterfall model?', ARRAY['A: High customer involvement', 'B: Difficulty accommodating changing requirements', 'C: Lack of documentation', 'D: No testing phase'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is requirements traceability important?', ARRAY['A: To reduce coding effort', 'B: To ensure all requirements are addressed throughout development', 'C: To eliminate the need for testing', 'D: To speed up deployment'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What problem does coupling measure in software design?', ARRAY['A: Execution speed', 'B: Dependency between modules', 'C: Memory usage', 'D: User satisfaction'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is high cohesion desirable in software modules?', ARRAY['A: It increases hardware utilization', 'B: It simplifies debugging and maintenance', 'C: It removes the need for documentation', 'D: It improves network performance'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the primary purpose of a use case diagram?', ARRAY['A: Describe system architecture', 'B: Model interactions between users and the system', 'C: Define database structure', 'D: Specify algorithms'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What does verification ensure in software development?', ARRAY['A: The product meets user needs', 'B: The product is built according to specifications', 'C: The software has no bugs', 'D: The system is fully optimized'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the main goal of refactoring?', ARRAY['A: Adding new features', 'B: Improving code structure without changing behavior', 'C: Fixing runtime errors', 'D: Increasing execution speed'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why are non-functional requirements important?', ARRAY['A: They define system features', 'B: They specify quality attributes like performance and security', 'C: They replace functional requirements', 'D: They reduce development cost'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the main advantage of iterative development?', ARRAY['A: Complete documentation upfront', 'B: Early delivery of working software', 'C: No need for testing', 'D: Fixed scope throughout the project'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What risk does configuration management primarily address?', ARRAY['A: User dissatisfaction', 'B: Uncontrolled changes to software artifacts', 'C: Performance bottlenecks', 'D: Security vulnerabilities'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is black-box testing used?', ARRAY['A: To test internal code structure', 'B: To validate functionality without knowing implementation', 'C: To optimize algorithms', 'D: To improve code readability'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What does the term ''technical debt'' refer to?', ARRAY['A: Unpaid software licenses', 'B: Future cost of quick or poor design decisions', 'C: Hardware maintenance cost', 'D: Testing expenses'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the main purpose of a software architecture?', ARRAY['A: Define coding standards', 'B: Provide a high-level structure of the system', 'C: Describe user interface details', 'D: List test cases'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is change management critical in large software projects?', ARRAY['A: To eliminate user feedback', 'B: To control impact of requirement changes', 'C: To speed up coding', 'D: To reduce hardware costs'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the key difference between validation and verification?', ARRAY['A: Validation checks code, verification checks design', 'B: Validation ensures right product, verification ensures product is built right', 'C: Validation happens before verification', 'D: They are identical concepts'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why are design patterns useful?', ARRAY['A: They generate code automatically', 'B: They provide proven solutions to common design problems', 'C: They replace system requirements', 'D: They eliminate testing'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What does regression testing ensure?', ARRAY['A: New features are added correctly', 'B: Existing functionality remains unaffected by changes', 'C: System performance is optimal', 'D: User interfaces are consistent'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is prototyping used during requirements analysis?', ARRAY['A: To finalize architecture', 'B: To clarify and validate user requirements', 'C: To replace documentation', 'D: To improve runtime efficiency'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the primary objective of risk management?', ARRAY['A: Eliminate all risks', 'B: Identify and mitigate potential project risks', 'C: Reduce testing effort', 'D: Increase development speed'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is user feedback important in Agile development?', ARRAY['A: It replaces documentation', 'B: It helps adapt the product to changing needs', 'C: It reduces coding effort', 'D: It eliminates testing'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the purpose of acceptance testing?', ARRAY['A: Verify internal code quality', 'B: Confirm software meets user requirements', 'C: Measure performance metrics', 'D: Check database consistency'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is documentation still important in Agile projects?', ARRAY['A: Agile discourages communication', 'B: It supports maintenance and knowledge transfer', 'C: It replaces customer collaboration', 'D: It eliminates the need for testing'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What problem does continuous integration address?', ARRAY['A: Late discovery of integration issues', 'B: User interface design', 'C: Database normalization', 'D: Requirement ambiguity'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the main benefit of automated testing?', ARRAY['A: Eliminates the need for manual testing', 'B: Provides faster and repeatable test execution', 'C: Improves code readability', 'D: Reduces hardware costs'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is risk-based testing important?', ARRAY['A: It prioritizes testing based on business and technical risks', 'B: It eliminates testing for low-priority features', 'C: It reduces development cost automatically', 'D: It replaces documentation'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What does the term ''code smell'' indicate?', ARRAY['A: Syntax error', 'B: Potential design or maintainability problem', 'C: Hardware inefficiency', 'D: Optimized algorithm'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is separation of concerns important in software design?', ARRAY['A: It reduces compilation time', 'B: It makes systems easier to understand and maintain', 'C: It increases CPU usage', 'D: It replaces testing'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the primary goal of software metrics?', ARRAY['A: Generate automated code', 'B: Measure and improve software quality and productivity', 'C: Eliminate testing', 'D: Simplify deployment'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why are mock objects used in unit testing?', ARRAY['A: To replace hardware dependencies', 'B: To simulate and isolate components for testing', 'C: To improve performance', 'D: To reduce coding effort'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the advantage of using UML diagrams?', ARRAY['A: They automatically generate code', 'B: They provide visual modeling of software systems', 'C: They eliminate documentation needs', 'D: They replace testing'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is code review considered a good practice?', ARRAY['A: It reduces execution time', 'B: It improves code quality and knowledge sharing', 'C: It replaces unit testing', 'D: It removes the need for design patterns'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the purpose of a design document?', ARRAY['A: Specify coding standards', 'B: Guide the implementation with a blueprint of the system', 'C: Replace testing', 'D: Measure performance'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is continuous deployment beneficial?', ARRAY['A: It eliminates testing', 'B: It delivers changes to production faster and reliably', 'C: It reduces hardware usage', 'D: It removes the need for version control'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What problem does a code smell indicate?', ARRAY['A: Potential maintainability or design problem', 'B: Syntax error', 'C: Memory leak', 'D: Hardware incompatibility'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why are interface contracts important?', ARRAY['A: They improve compiler speed', 'B: They define expected behavior between modules', 'C: They replace testing', 'D: They optimize runtime performance'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the main benefit of modular design?', ARRAY['A: Faster compilation', 'B: Easier maintenance and reusability', 'C: Reduced memory usage', 'D: Eliminates need for testing'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is automated build important?', ARRAY['A: It replaces testing', 'B: It ensures consistent builds and reduces integration errors', 'C: It reduces user training', 'D: It simplifies documentation'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the main advantage of test-driven development (TDD)?', ARRAY['A: It replaces design documentation', 'B: It ensures code is tested as it is written', 'C: It eliminates debugging', 'D: It increases runtime performance'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is pair programming effective?', ARRAY['A: It halves development time', 'B: It increases code quality and knowledge sharing', 'C: It removes testing', 'D: It reduces system requirements'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What does maintainability refer to in software quality?', ARRAY['A: How fast the software executes', 'B: Ease of modifying and updating software', 'C: Number of users supported', 'D: Hardware requirements'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why are sequence diagrams useful?', ARRAY['A: They automatically generate tests', 'B: They model the order of interactions between objects', 'C: They optimize algorithms', 'D: They replace code documentation'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the key advantage of Agile retrospectives?', ARRAY['A: They replace design documentation', 'B: They help teams reflect and improve processes', 'C: They remove testing effort', 'D: They increase execution speed'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is continuous integration important for large projects?', ARRAY['A: It replaces code reviews', 'B: It detects integration errors early', 'C: It reduces hardware cost', 'D: It eliminates testing'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is software maintainability difficult without proper design?', ARRAY['A: Code becomes difficult to understand and modify', 'B: Testing becomes unnecessary', 'C: Performance is reduced', 'D: User requirements are simplified'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why are component diagrams useful in software engineering?', ARRAY['A: They show module dependencies and deployment', 'B: They replace testing', 'C: They generate user documentation', 'D: They optimize memory'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the purpose of a deployment diagram?', ARRAY['A: To show runtime interactions between objects', 'B: To illustrate hardware nodes and software components', 'C: To define user interface layout', 'D: To optimize system performance'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is performance profiling used in software projects?', ARRAY['A: To automatically generate code', 'B: To identify bottlenecks and optimize performance', 'C: To replace testing', 'D: To reduce documentation'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'What is the purpose of a traceability matrix?', ARRAY['A: To track requirements through design, implementation, and testing', 'B: To replace unit tests', 'C: To optimize software architecture', 'D: To reduce coding effort'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Medium', 'Why is modular programming beneficial in large projects?', ARRAY['A: Modules can be developed, tested, and maintained independently', 'B: It reduces coding effort to zero', 'C: It eliminates testing', 'D: It increases runtime performance automatically'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is a key advantage of using event-driven architecture?', ARRAY['A: Simplifies synchronous operations', 'B: Improves decoupling and responsiveness', 'C: Reduces hardware requirements', 'D: Eliminates testing needs'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is API versioning important?', ARRAY['A: It reduces execution speed', 'B: It prevents breaking existing clients', 'C: It eliminates the need for documentation', 'D: It increases memory usage'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the main risk of using shared global state in multi-threaded applications?', ARRAY['A: Improved performance', 'B: Race conditions and unpredictable behavior', 'C: Simpler code structure', 'D: Increased memory efficiency'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is modularity important in software design?', ARRAY['A: Reduces maintainability', 'B: Improves code reuse and understandability', 'C: Eliminates testing', 'D: Increases compilation time'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the benefit of eventual consistency in distributed databases?', ARRAY['A: Immediate correctness', 'B: Improved availability and partition tolerance', 'C: Eliminates concurrency issues', 'D: Simplifies code structure'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why does high coupling reduce system flexibility?', ARRAY['A: Changes in one module affect others', 'B: Improves testability', 'C: Reduces memory consumption', 'D: Increases scalability automatically'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the main purpose of code refactoring?', ARRAY['A: Change system functionality', 'B: Improve code structure without altering behavior', 'C: Reduce memory usage only', 'D: Remove the need for testing'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is logging critical in distributed systems?', ARRAY['A: To eliminate testing', 'B: To understand system behavior and diagnose issues', 'C: To increase memory usage', 'D: To remove concurrency problems'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What does the Liskov Substitution Principle enforce?', ARRAY['A: Derived classes should replace base classes without breaking correctness', 'B: Eliminate inheritance', 'C: Reduce memory usage', 'D: Increase execution speed'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is testing important in agile methodologies?', ARRAY['A: It slows down development', 'B: It ensures rapid feedback and software quality', 'C: It eliminates coding errors automatically', 'D: It replaces documentation'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the primary goal of CI/CD pipelines?', ARRAY['A: Reduce deployment frequency', 'B: Automate build, test, and deployment processes', 'C: Eliminate testing', 'D: Reduce software modularity'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is immutability recommended in functional programming?', ARRAY['A: Reduces memory usage', 'B: Prevents side effects and race conditions', 'C: Improves UI responsiveness', 'D: Reduces CPU utilization'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the main trade-off in microservices architecture?', ARRAY['A: Reduced operational complexity', 'B: Increased inter-service communication overhead', 'C: No scalability issues', 'D: Eliminated need for testing'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is observability critical in cloud-native systems?', ARRAY['A: It eliminates deployment', 'B: It allows understanding system behavior from metrics, logs, and traces', 'C: It reduces memory usage', 'D: It simplifies compilation'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the main challenge of distributed consensus?', ARRAY['A: Ensuring all nodes agree despite failures and network delays', 'B: Reducing code size', 'C: Increasing CPU utilization', 'D: Simplifying user interfaces'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is dependency injection used in software design?', ARRAY['A: To hard-code dependencies', 'B: To increase modularity and testability', 'C: To reduce network latency', 'D: To simplify hardware configuration'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is latency a concern in asynchronous messaging?', ARRAY['A: It increases CPU usage', 'B: Messages may take longer to be processed despite decoupling', 'C: It eliminates concurrency problems', 'D: It reduces memory usage'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is a key advantage of CQRS (Command Query Responsibility Segregation)?', ARRAY['A: Combines read and write models into one', 'B: Separates read and write concerns for scalability and performance', 'C: Eliminates the need for databases', 'D: Reduces system observability'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why are immutable events recommended in event sourcing?', ARRAY['A: To allow modification of past events', 'B: To maintain a reliable audit trail and system state', 'C: To increase memory usage', 'D: To reduce system throughput'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the benefit of using feature toggles?', ARRAY['A: Disable production monitoring', 'B: Enable gradual rollout and easy rollback of features', 'C: Eliminate code testing', 'D: Reduce compilation time'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is load balancing critical in distributed systems?', ARRAY['A: To centralize requests', 'B: To evenly distribute traffic and improve reliability', 'C: To reduce testing effort', 'D: To eliminate scalability issues'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is monitoring of distributed transactions important?', ARRAY['A: To simplify code structure', 'B: To detect failures and maintain consistency across services', 'C: To increase latency', 'D: To reduce observability'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the purpose of circuit breakers in software systems?', ARRAY['A: Prevent cascading failures by stopping repeated failing calls', 'B: Increase network traffic', 'C: Eliminate concurrency', 'D: Reduce logging overhead'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is horizontal partitioning (sharding) used in databases?', ARRAY['A: To reduce query complexity by dividing data across nodes', 'B: To merge multiple tables', 'C: To increase transaction latency', 'D: To eliminate indexing needs'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the primary challenge of backward compatibility?', ARRAY['A: It increases development costs but ensures existing clients continue to work', 'B: It eliminates the need for testing', 'C: It reduces memory usage', 'D: It simplifies architecture'], 'A'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why does Conway’s Law impact software architecture decisions?', ARRAY['A: It enforces coding standards automatically', 'B: System design tends to mirror the communication structure of the organization', 'C: It limits scalability of programming languages', 'D: It eliminates the need for architectural documentation'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the primary architectural risk of a tightly coupled system?', ARRAY['A: Increased memory usage', 'B: Difficulty in modifying or scaling individual components', 'C: Higher compilation time', 'D: Reduced execution speed only'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is the Spiral model considered risk-driven?', ARRAY['A: It eliminates testing risks', 'B: Each iteration focuses on identifying and mitigating key risks', 'C: It prioritizes documentation over development', 'D: It removes the need for requirements analysis'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the main drawback of using microservices architecture?', ARRAY['A: Lack of scalability', 'B: Increased system complexity and operational overhead', 'C: Poor fault isolation', 'D: Limited technology choices'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is eventual consistency acceptable in some distributed systems?', ARRAY['A: It guarantees immediate correctness', 'B: It improves availability and partition tolerance', 'C: It eliminates concurrency issues', 'D: It simplifies data modeling'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What problem does the CAP theorem fundamentally describe?', ARRAY['A: Trade-offs between security, performance, and usability', 'B: Limitations of object-oriented programming', 'C: Trade-offs among consistency, availability, and partition tolerance', 'D: Conflicts between functional and non-functional requirements'], 'C'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is idempotency critical in RESTful APIs?', ARRAY['A: To improve response time', 'B: To ensure repeated requests do not cause unintended side effects', 'C: To reduce payload size', 'D: To enforce authentication'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the main risk of premature optimization?', ARRAY['A: Lower runtime performance', 'B: Increased hardware costs', 'C: Added complexity without proven benefit', 'D: Reduced code execution speed'], 'C'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why does high cyclomatic complexity reduce code quality?', ARRAY['A: It increases execution speed', 'B: It makes code harder to test and maintain', 'C: It limits compiler optimization', 'D: It reduces memory efficiency'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What architectural concern does the Single Responsibility Principle address?', ARRAY['A: Performance optimization', 'B: Security enforcement', 'C: Reducing reasons for a module to change', 'D: Database normalization'], 'C'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is fault tolerance essential in distributed systems?', ARRAY['A: To eliminate network latency', 'B: To allow the system to continue operating despite failures', 'C: To reduce development cost', 'D: To simplify system architecture'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the main challenge of achieving strong consistency at scale?', ARRAY['A: Increased memory usage', 'B: Higher latency due to coordination overhead', 'C: Limited programming language support', 'D: Complex user interfaces'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is separation of concerns critical in large-scale systems?', ARRAY['A: It eliminates all dependencies', 'B: It reduces cognitive load and improves maintainability', 'C: It increases execution speed', 'D: It replaces architectural patterns'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What problem does horizontal scaling primarily solve?', ARRAY['A: Memory leaks', 'B: Single point of failure and load limitations', 'C: Poor code readability', 'D: Lack of modularity'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why can shared mutable state cause concurrency issues?', ARRAY['A: It reduces memory usage', 'B: It leads to race conditions and unpredictable behavior', 'C: It simplifies thread communication', 'D: It improves CPU utilization'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the main benefit of domain-driven design (DDD)?', ARRAY['A: Automatic code generation', 'B: Aligning software design closely with business domain concepts', 'C: Eliminating the need for testing', 'D: Reducing deployment complexity'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why does loose coupling improve system resilience?', ARRAY['A: It increases execution speed', 'B: Failures in one component have limited impact on others', 'C: It enforces strict interfaces', 'D: It reduces the need for documentation'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the key risk when scaling a monolithic architecture?', ARRAY['A: Increased memory availability', 'B: Tight interdependencies affecting deployment and scaling', 'C: Reduced code duplication', 'D: Simplified debugging'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is observability important in modern software systems?', ARRAY['A: It replaces the need for testing', 'B: It enables understanding system behavior from outputs', 'C: It increases execution speed', 'D: It reduces hardware requirements'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What trade-off does asynchronous communication introduce?', ARRAY['A: Lower availability', 'B: Increased latency but improved decoupling', 'C: Reduced scalability', 'D: Simpler error handling'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why can distributed transactions be problematic?', ARRAY['A: They eliminate consistency', 'B: They introduce coordination complexity and performance overhead', 'C: They simplify error recovery', 'D: They reduce fault tolerance'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What does the Open–Closed Principle promote?', ARRAY['A: Classes should be open for modification', 'B: Systems should avoid abstraction', 'C: Software entities should be open for extension but closed for modification', 'D: Modules should depend on concrete implementations'], 'C'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why is backward compatibility important in API design?', ARRAY['A: It increases development speed', 'B: It prevents breaking existing clients when changes are introduced', 'C: It enforces stricter security', 'D: It reduces testing effort'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'What is the primary challenge of achieving exactly-once message delivery?', ARRAY['A: Message serialization', 'B: Handling failures and retries without duplication', 'C: Reducing network bandwidth', 'D: Improving UI responsiveness'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Software Engineering', 'Hard', 'Why does abstraction help manage software complexity?', ARRAY['A: It removes all dependencies', 'B: It hides implementation details while exposing essential behavior', 'C: It increases execution speed', 'D: It eliminates the need for testing'], 'B'
FROM domains d WHERE d.name = 'Software Engineering';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What is the primary goal of cyber security?', ARRAY['A: Increase system performance', 'B: Protect systems and data from attacks', 'C: Develop new software features', 'D: Improve user interface design'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'Which principle ensures data is accessible when needed?', ARRAY['A: Confidentiality', 'B: Integrity', 'C: Availability', 'D: Authentication'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What does malware primarily refer to?', ARRAY['A: Hardware failure', 'B: Malicious software', 'C: Network congestion', 'D: User error'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'Which attack attempts to trick users into revealing sensitive information?', ARRAY['A: DDoS', 'B: Phishing', 'C: SQL Injection', 'D: Man-in-the-middle'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What does authentication verify?', ARRAY['A: What actions a user can perform', 'B: Who the user is', 'C: Data accuracy', 'D: Network speed'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'Which security measure restricts network traffic based on rules?', ARRAY['A: Firewall', 'B: Router', 'C: Compiler', 'D: Load balancer'], 'A'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What is encryption mainly used for?', ARRAY['A: Compressing data', 'B: Hiding data from unauthorized access', 'C: Improving data speed', 'D: Backing up files'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'Which factor strengthens password security the most?', ARRAY['A: Short length', 'B: Use of common words', 'C: Complexity and length', 'D: Using the same password everywhere'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What is the main risk of using public Wi-Fi?', ARRAY['A: Slower internet', 'B: Unauthorized interception of data', 'C: Higher cost', 'D: Limited bandwidth'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What does a security patch primarily fix?', ARRAY['A: Hardware defects', 'B: Software vulnerabilities', 'C: User behavior', 'D: Network topology'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What does confidentiality protect?', ARRAY['A: System uptime', 'B: Unauthorized data disclosure', 'C: Data accuracy', 'D: Application speed'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'Which device monitors network traffic for suspicious activity?', ARRAY['A: Switch', 'B: IDS', 'C: Printer', 'D: Gateway'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What is the main purpose of access control?', ARRAY['A: Improve system speed', 'B: Limit resource usage to authorized users', 'C: Increase storage capacity', 'D: Encrypt data'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'Which threat exploits human psychology rather than technical flaws?', ARRAY['A: Brute force attack', 'B: Social engineering', 'C: Buffer overflow', 'D: SQL injection'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What is the purpose of antivirus software?', ARRAY['A: Optimize performance', 'B: Detect and remove malicious software', 'C: Encrypt files', 'D: Manage networks'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'Which practice helps ensure system integrity?', ARRAY['A: Disabling updates', 'B: Regular system monitoring', 'C: Using default passwords', 'D: Ignoring logs'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What does multi-factor authentication require?', ARRAY['A: Multiple usernames', 'B: Two or more verification methods', 'C: Frequent password changes only', 'D: Single biometric factor'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What is the main role of a VPN?', ARRAY['A: Increase browsing speed', 'B: Secure data transmission over networks', 'C: Block websites', 'D: Detect malware'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'Which action reduces the risk of account compromise?', ARRAY['A: Reusing passwords', 'B: Enabling MFA', 'C: Sharing credentials', 'D: Disabling alerts'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'What is data backup mainly used for?', ARRAY['A: Improving encryption', 'B: Recovering from data loss', 'C: Preventing attacks', 'D: Reducing latency'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Easy', 'Which type of attack overwhelms a system with traffic?', ARRAY['A: Phishing', 'B: DDoS', 'C: Spoofing', 'D: Privilege escalation'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is least privilege important in system security?', ARRAY['A: It improves system performance', 'B: It reduces the impact of compromised accounts', 'C: It simplifies network routing', 'D: It eliminates authentication'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What problem does hashing primarily solve?', ARRAY['A: Data encryption', 'B: Password verification without storing plaintext', 'C: Network authentication', 'D: Key exchange'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why are salting techniques used with password hashes?', ARRAY['A: Increase hash speed', 'B: Prevent rainbow table attacks', 'C: Reduce storage size', 'D: Simplify authentication'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the main purpose of penetration testing?', ARRAY['A: Develop exploits', 'B: Identify security weaknesses proactively', 'C: Replace security monitoring', 'D: Improve UI security'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is HTTPS more secure than HTTP?', ARRAY['A: Faster transmission', 'B: Uses encryption to protect data in transit', 'C: Reduces server load', 'D: Improves SEO ranking'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security risk does SQL injection exploit?', ARRAY['A: Weak encryption', 'B: Improper input validation', 'C: Poor network routing', 'D: Outdated hardware'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the role of an intrusion prevention system (IPS)?', ARRAY['A: Log security events', 'B: Block detected malicious activity', 'C: Encrypt network traffic', 'D: Manage users'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is patch management critical?', ARRAY['A: Reduces hardware usage', 'B: Fixes known vulnerabilities', 'C: Improves UI consistency', 'D: Eliminates user training'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the main risk of privilege escalation attacks?', ARRAY['A: Data loss only', 'B: Unauthorized control over system resources', 'C: Network congestion', 'D: Slow response time'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is log monitoring important?', ARRAY['A: Improve system speed', 'B: Detect suspicious activities', 'C: Encrypt communication', 'D: Reduce bandwidth usage'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What does defense-in-depth emphasize?', ARRAY['A: Single strong control', 'B: Multiple layers of security', 'C: Cloud-only protection', 'D: Removing firewalls'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is endpoint security necessary?', ARRAY['A: Endpoints never get attacked', 'B: Endpoints are common attack vectors', 'C: It replaces network security', 'D: It simplifies authentication'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What does token-based authentication improve?', ARRAY['A: Password storage', 'B: Session security', 'C: Network speed', 'D: Data compression'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the primary risk of unpatched systems?', ARRAY['A: Reduced performance', 'B: Exploitation of known vulnerabilities', 'C: Hardware damage', 'D: User dissatisfaction'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is network segmentation used?', ARRAY['A: Increase latency', 'B: Limit the spread of attacks', 'C: Reduce encryption', 'D: Simplify routing tables'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What does threat modeling help identify?', ARRAY['A: Coding standards', 'B: Potential attack vectors', 'C: Hardware defects', 'D: UI usability issues'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why does zero-trust architecture avoid implicit trust?', ARRAY['A: To reduce encryption overhead', 'B: Because internal networks can be compromised', 'C: To simplify access management', 'D: To improve performance'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What challenge does key management primarily address in cryptographic systems?', ARRAY['A: Hash collisions', 'B: Secure generation, storage, and rotation of keys', 'C: Encryption speed', 'D: User authentication'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is perfect forward secrecy important?', ARRAY['A: Prevents data compression', 'B: Limits damage if long-term keys are compromised', 'C: Improves authentication speed', 'D: Reduces certificate costs'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What problem does lateral movement indicate during an attack?', ARRAY['A: Initial compromise', 'B: Expansion of attacker access within a network', 'C: Data exfiltration', 'D: Service disruption'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is behavioral analysis effective against advanced threats?', ARRAY['A: Relies on known signatures', 'B: Detects anomalies rather than known patterns', 'C: Reduces system load', 'D: Eliminates false positives'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What risk does insecure deserialization introduce?', ARRAY['A: Memory leaks', 'B: Remote code execution', 'C: Network congestion', 'D: Data redundancy'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why are supply chain attacks difficult to detect?', ARRAY['A: They exploit trusted third-party components', 'B: They rely on brute force', 'C: They only affect hardware', 'D: They generate excessive logs'], 'A'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What is the main security risk of misconfigured cloud services?', ARRAY['A: Vendor lock-in', 'B: Public exposure of sensitive resources', 'C: High operational cost', 'D: Reduced scalability'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is runtime application self-protection (RASP) valuable?', ARRAY['A: Protects only during development', 'B: Detects and blocks attacks during execution', 'C: Replaces firewalls', 'D: Improves performance'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What is the primary limitation of signature-based detection?', ARRAY['A: High resource usage', 'B: Inability to detect unknown attacks', 'C: Complex configuration', 'D: Excessive false positives'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why does data exfiltration often use encrypted channels?', ARRAY['A: Reduce data size', 'B: Evade detection mechanisms', 'C: Improve reliability', 'D: Increase speed'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What security issue arises from improper certificate validation?', ARRAY['A: Denial of service', 'B: Man-in-the-middle attacks', 'C: Privilege escalation', 'D: Data corruption'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is sandboxing effective for malware analysis?', ARRAY['A: Improves performance', 'B: Isolates malicious behavior from production systems', 'C: Encrypts malware samples', 'D: Prevents execution'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is the principle of least privilege important in cyber security?', ARRAY['A: It increases system performance', 'B: It limits damage from compromised accounts', 'C: It simplifies user authentication', 'D: It eliminates the need for monitoring'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security weakness does SQL injection exploit?', ARRAY['A: Weak encryption algorithms', 'B: Improper input validation', 'C: Misconfigured firewalls', 'D: Insecure network protocols'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why are password hashes preferred over plaintext storage?', ARRAY['A: They improve login speed', 'B: They protect passwords even if the database is compromised', 'C: They reduce database size', 'D: They eliminate the need for authentication'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the main purpose of a penetration test?', ARRAY['A: Develop new exploits', 'B: Identify security vulnerabilities before attackers do', 'C: Replace automated security tools', 'D: Improve user interface design'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is HTTPS essential for web applications?', ARRAY['A: It reduces server load', 'B: It encrypts data transmitted between client and server', 'C: It blocks malicious users', 'D: It improves website ranking'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security benefit does multi-factor authentication provide?', ARRAY['A: Faster authentication', 'B: Reduced reliance on passwords alone', 'C: Elimination of user credentials', 'D: Automatic account recovery'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the primary role of an Intrusion Detection System (IDS)?', ARRAY['A: Block malicious traffic', 'B: Detect suspicious or malicious activity', 'C: Encrypt network communication', 'D: Authenticate users'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is patch management critical for system security?', ARRAY['A: It improves system speed', 'B: It fixes known vulnerabilities', 'C: It enhances user experience', 'D: It simplifies software installation'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What risk does privilege escalation pose?', ARRAY['A: Data duplication', 'B: Unauthorized access to higher-level permissions', 'C: Network slowdown', 'D: Reduced system availability'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is logging important in cyber security?', ARRAY['A: To reduce storage usage', 'B: To detect and investigate security incidents', 'C: To improve encryption strength', 'D: To block all attacks automatically'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What does defense-in-depth aim to achieve?', ARRAY['A: Single strong security control', 'B: Multiple layers of security controls', 'C: Cloud-only protection', 'D: Removal of firewalls'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why are endpoints considered high-risk assets?', ARRAY['A: They are rarely used', 'B: They are common entry points for attackers', 'C: They do not support encryption', 'D: They are isolated from networks'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security issue does cross-site scripting (XSS) exploit?', ARRAY['A: Weak server authentication', 'B: Improper handling of user input in web pages', 'C: Database misconfiguration', 'D: Insecure network routing'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is network segmentation used in secure architectures?', ARRAY['A: To increase bandwidth', 'B: To limit the spread of attacks', 'C: To reduce encryption needs', 'D: To simplify firewall rules'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the primary goal of threat modeling?', ARRAY['A: Identify potential attack paths', 'B: Eliminate all vulnerabilities', 'C: Improve code readability', 'D: Optimize system performance'], 'A'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why are security audits conducted?', ARRAY['A: To remove user access', 'B: To assess compliance and security posture', 'C: To reduce system costs', 'D: To improve application speed'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What does token-based authentication primarily improve?', ARRAY['A: Password complexity', 'B: Session security', 'C: Network speed', 'D: Data compression'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is vulnerability scanning not sufficient on its own?', ARRAY['A: It is too expensive', 'B: It does not validate exploitability', 'C: It replaces monitoring', 'D: It slows down networks'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the main purpose of incident response planning?', ARRAY['A: Prevent all attacks', 'B: Minimize impact and recovery time after incidents', 'C: Eliminate the need for backups', 'D: Automate user management'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is email filtering important in organizations?', ARRAY['A: To reduce inbox clutter', 'B: To block phishing and malware delivery', 'C: To improve email speed', 'D: To archive messages'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security risk arises from weak access controls?', ARRAY['A: Improved usability', 'B: Unauthorized access to sensitive resources', 'C: Higher system availability', 'D: Reduced maintenance cost'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is regular security training important for employees?', ARRAY['A: To replace technical controls', 'B: To reduce human-related security risks', 'C: To eliminate malware', 'D: To automate compliance'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the primary purpose of data loss prevention (DLP)?', ARRAY['A: Improve database performance', 'B: Prevent unauthorized data exfiltration', 'C: Encrypt all data', 'D: Monitor system uptime'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why are secure backups essential in ransomware scenarios?', ARRAY['A: They prevent initial infection', 'B: They allow recovery without paying ransom', 'C: They improve encryption', 'D: They block attacker access'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is the principle of least privilege important in cyber security?', ARRAY['A: It limits damage from compromised accounts', 'B: It improves system performance', 'C: It simplifies user authentication', 'D: It removes the need for monitoring'], 'A'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security weakness does SQL injection exploit?', ARRAY['A: Weak encryption algorithms', 'B: Insecure network protocols', 'C: Improper input validation', 'D: Firewall misconfiguration'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why are password hashes preferred over plaintext storage?', ARRAY['A: They reduce database size', 'B: They protect passwords if the database is compromised', 'C: They improve login speed', 'D: They eliminate authentication'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the main purpose of penetration testing?', ARRAY['A: Replace automated security tools', 'B: Improve user interface design', 'C: Identify security vulnerabilities proactively', 'D: Develop new exploits'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is HTTPS essential for web applications?', ARRAY['A: It improves website ranking', 'B: It blocks malicious users', 'C: It reduces server load', 'D: It encrypts data in transit'], 'D'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security benefit does multi-factor authentication provide?', ARRAY['A: Automatic account recovery', 'B: Reduced reliance on passwords alone', 'C: Faster authentication', 'D: Elimination of user credentials'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the primary role of an Intrusion Detection System (IDS)?', ARRAY['A: Detect suspicious or malicious activity', 'B: Encrypt network communication', 'C: Block all incoming traffic', 'D: Authenticate users'], 'A'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is patch management critical for system security?', ARRAY['A: It enhances user experience', 'B: It improves system speed', 'C: It fixes known vulnerabilities', 'D: It simplifies software installation'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What risk does privilege escalation pose?', ARRAY['A: Unauthorized access to higher-level permissions', 'B: Network slowdown', 'C: Reduced system availability', 'D: Data duplication'], 'A'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is logging important in cyber security?', ARRAY['A: To reduce storage usage', 'B: To detect and investigate security incidents', 'C: To encrypt communication', 'D: To block attacks automatically'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What does defense-in-depth aim to achieve?', ARRAY['A: Cloud-only protection', 'B: Single strong security control', 'C: Multiple layers of security controls', 'D: Removal of firewalls'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why are endpoints considered high-risk assets?', ARRAY['A: They do not support encryption', 'B: They are isolated from networks', 'C: They are common entry points for attackers', 'D: They are rarely used'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security issue does cross-site scripting (XSS) exploit?', ARRAY['A: Weak server authentication', 'B: Improper handling of user input in web pages', 'C: Insecure network routing', 'D: Database misconfiguration'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is network segmentation used in secure architectures?', ARRAY['A: To reduce encryption needs', 'B: To increase bandwidth', 'C: To limit the spread of attacks', 'D: To simplify firewall rules'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the primary goal of threat modeling?', ARRAY['A: Identify potential attack paths', 'B: Improve code readability', 'C: Eliminate all vulnerabilities', 'D: Optimize system performance'], 'A'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why are security audits conducted?', ARRAY['A: To reduce system costs', 'B: To improve application speed', 'C: To assess compliance and security posture', 'D: To remove user access'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What does token-based authentication primarily improve?', ARRAY['A: Network speed', 'B: Password complexity', 'C: Session security', 'D: Data compression'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is vulnerability scanning not sufficient on its own?', ARRAY['A: It slows down networks', 'B: It does not validate exploitability', 'C: It replaces monitoring', 'D: It is too expensive'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the main purpose of incident response planning?', ARRAY['A: Prevent all attacks', 'B: Automate user management', 'C: Minimize impact and recovery time after incidents', 'D: Eliminate the need for backups'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is email filtering important in organizations?', ARRAY['A: To archive messages', 'B: To improve email speed', 'C: To block phishing and malware delivery', 'D: To reduce inbox clutter'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security risk arises from weak access controls?', ARRAY['A: Improved usability', 'B: Reduced maintenance cost', 'C: Unauthorized access to sensitive resources', 'D: Higher system availability'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is regular security training important for employees?', ARRAY['A: To eliminate malware', 'B: To automate compliance', 'C: To reduce human-related security risks', 'D: To replace technical controls'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the primary purpose of data loss prevention (DLP)?', ARRAY['A: Prevent unauthorized data exfiltration', 'B: Improve database performance', 'C: Monitor system uptime', 'D: Encrypt all data'], 'A'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why are secure backups essential in ransomware scenarios?', ARRAY['A: They block attacker access', 'B: They allow recovery without paying ransom', 'C: They prevent initial infection', 'D: They improve encryption'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is role-based access control (RBAC) used in organizations?', ARRAY['A: To simplify network routing', 'B: To assign permissions based on job roles', 'C: To encrypt user credentials', 'D: To eliminate authentication'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security risk does insecure API design introduce?', ARRAY['A: Reduced application speed', 'B: Unauthorized data access', 'C: Improved usability', 'D: Lower storage usage'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is certificate-based authentication considered strong?', ARRAY['A: It relies on shared secrets', 'B: It uses asymmetric cryptography', 'C: It avoids encryption', 'D: It eliminates key management'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the primary purpose of security baselining?', ARRAY['A: Increase system speed', 'B: Define a known secure configuration', 'C: Remove all vulnerabilities', 'D: Replace monitoring tools'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why are brute-force attacks more effective against weak passwords?', ARRAY['A: They bypass encryption', 'B: They rely on repeated guessing', 'C: They exploit network flaws', 'D: They avoid authentication systems'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What does security information and event management (SIEM) primarily provide?', ARRAY['A: Encryption services', 'B: Centralized log collection and analysis', 'C: Network routing', 'D: User authentication'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is sandboxing useful in malware detection?', ARRAY['A: It speeds up execution', 'B: It isolates suspicious code for analysis', 'C: It encrypts malware samples', 'D: It blocks all applications'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What risk is associated with insecure session management?', ARRAY['A: Data duplication', 'B: Session hijacking', 'C: Improved performance', 'D: Lower memory usage'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is continuous monitoring important in security operations?', ARRAY['A: It replaces incident response', 'B: It enables early detection of threats', 'C: It eliminates false positives', 'D: It reduces logging needs'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security concern does shadow IT introduce?', ARRAY['A: Lower costs', 'B: Unmanaged and unknown assets', 'C: Improved innovation', 'D: Better user satisfaction'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is data classification important?', ARRAY['A: It reduces storage cost', 'B: It ensures appropriate security controls are applied', 'C: It improves data speed', 'D: It removes encryption needs'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What vulnerability does cross-site request forgery (CSRF) exploit?', ARRAY['A: User trust in authenticated sessions', 'B: Database misconfiguration', 'C: Weak encryption', 'D: Network latency'], 'A'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is change management important for security?', ARRAY['A: It reduces development time', 'B: It prevents introducing new vulnerabilities', 'C: It improves user training', 'D: It eliminates the need for audits'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the main benefit of vulnerability disclosure programs?', ARRAY['A: Hiding system weaknesses', 'B: Encouraging responsible reporting of vulnerabilities', 'C: Eliminating penetration testing', 'D: Reducing software cost'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is secure configuration management important?', ARRAY['A: It improves system aesthetics', 'B: It reduces attack surface', 'C: It increases hardware usage', 'D: It simplifies user access'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What problem does weak encryption key management cause?', ARRAY['A: Faster encryption', 'B: Compromise of encrypted data', 'C: Lower storage usage', 'D: Improved system reliability'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is redundancy important for critical security systems?', ARRAY['A: To reduce cost', 'B: To ensure availability during failures', 'C: To simplify configuration', 'D: To eliminate attacks'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the main goal of identity federation?', ARRAY['A: Encrypt identities', 'B: Enable single sign-on across systems', 'C: Eliminate authentication', 'D: Centralize databases'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is endpoint detection and response (EDR) important?', ARRAY['A: It replaces firewalls', 'B: It detects and responds to endpoint threats', 'C: It improves network speed', 'D: It encrypts storage'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What security issue does insecure file upload functionality cause?', ARRAY['A: Slow page loading', 'B: Remote code execution', 'C: Better file accessibility', 'D: Reduced storage'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is secure key rotation practiced?', ARRAY['A: To increase key length', 'B: To limit the impact of key compromise', 'C: To improve encryption speed', 'D: To simplify authentication'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What is the main security concern of deprecated protocols?', ARRAY['A: High bandwidth usage', 'B: Known and exploitable weaknesses', 'C: Improved compatibility', 'D: Better performance'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'Why is code review important for application security?', ARRAY['A: It replaces automated tools', 'B: It helps identify security flaws early', 'C: It reduces coding time', 'D: It improves UI design'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Medium', 'What risk does improper error handling introduce?', ARRAY['A: Slower response times', 'B: Information leakage to attackers', 'C: Improved debugging', 'D: Reduced usability'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why does perfect forward secrecy (PFS) improve the security of encrypted communications?', ARRAY['A: It prevents brute-force attacks on passwords', 'B: It ensures session keys are not reused', 'C: It encrypts data using symmetric algorithms only', 'D: It eliminates the need for certificates'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'How does a timing attack extract sensitive information?', ARRAY['A: By exploiting packet loss', 'B: By analyzing execution time differences', 'C: By injecting malicious payloads', 'D: By intercepting encrypted traffic'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is memory-safe programming important for security?', ARRAY['A: It prevents SQL injection', 'B: It eliminates buffer overflow vulnerabilities', 'C: It improves network latency', 'D: It strengthens password policies'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What security weakness does hardcoded credentials introduce?', ARRAY['A: Increased encryption overhead', 'B: Difficulty in patch management', 'C: Unauthorized persistent access', 'D: Reduced system availability'], 'C'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is token binding used in modern authentication systems?', ARRAY['A: To reduce login latency', 'B: To prevent token replay attacks', 'C: To simplify session management', 'D: To remove encryption requirements'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What is the primary security concern with deserialization of untrusted data?', ARRAY['A: Data corruption', 'B: Remote code execution', 'C: Authentication bypass', 'D: Network congestion'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why are side-channel attacks difficult to detect?', ARRAY['A: They exploit physical characteristics rather than software flaws', 'B: They require insider access', 'C: They only affect legacy systems', 'D: They depend on weak passwords'], 'A'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What risk does insecure container orchestration introduce?', ARRAY['A: Higher resource consumption', 'B: Container escape and lateral movement', 'C: Reduced deployment speed', 'D: Lower application availability'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is entropy critical in cryptographic key generation?', ARRAY['A: It increases encryption speed', 'B: It ensures unpredictability of keys', 'C: It simplifies key storage', 'D: It reduces key size'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'How does a race condition become a security vulnerability?', ARRAY['A: By delaying execution', 'B: By allowing unintended access during timing gaps', 'C: By corrupting encrypted data', 'D: By exhausting system memory'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why are rolling secrets preferred over static secrets?', ARRAY['A: They increase system complexity', 'B: They limit exposure if secrets are compromised', 'C: They eliminate authentication', 'D: They improve system performance'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What security issue arises from improper use of cryptographic hash functions?', ARRAY['A: Key reuse', 'B: Collision attacks', 'C: Packet sniffing', 'D: Privilege escalation'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why does mutual TLS enhance system security?', ARRAY['A: It encrypts stored data', 'B: It authenticates both client and server', 'C: It removes the need for firewalls', 'D: It simplifies certificate management'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What risk does insufficient logging pose during incident response?', ARRAY['A: Higher storage cost', 'B: Incomplete forensic analysis', 'C: Slower system performance', 'D: Increased false positives'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is defense-in-depth effective against advanced persistent threats (APTs)?', ARRAY['A: It relies on a single strong control', 'B: It provides multiple layers of security controls', 'C: It eliminates insider threats', 'D: It replaces monitoring systems'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What is the main danger of insecure firmware updates?', ARRAY['A: Reduced device lifespan', 'B: Persistent compromise at a low level', 'C: Higher bandwidth usage', 'D: Slower boot time'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is secure boot important for system integrity?', ARRAY['A: It speeds up startup', 'B: It ensures only trusted code is executed at boot', 'C: It encrypts user data', 'D: It replaces antivirus software'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'How can insecure randomness weaken cryptographic systems?', ARRAY['A: By increasing computation cost', 'B: By making keys predictable', 'C: By increasing key size', 'D: By slowing down encryption'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is zero-trust architecture effective in modern networks?', ARRAY['A: It assumes all internal traffic is safe', 'B: It continuously verifies trust for every access request', 'C: It eliminates authentication', 'D: It simplifies network segmentation'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What is the primary security concern of legacy cryptographic algorithms?', ARRAY['A: High resource consumption', 'B: They contain known vulnerabilities', 'C: Poor interoperability', 'D: Increased development cost'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why does improper privilege separation increase attack impact?', ARRAY['A: It increases system complexity', 'B: It allows attackers broader access after compromise', 'C: It slows down system performance', 'D: It complicates auditing'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What threat does insecure DNS configuration introduce?', ARRAY['A: Reduced bandwidth', 'B: DNS spoofing and redirection attacks', 'C: Improved fault tolerance', 'D: Slower name resolution'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is isolation critical in multi-tenant cloud environments?', ARRAY['A: It reduces deployment time', 'B: It prevents data leakage between tenants', 'C: It improves scalability', 'D: It simplifies billing'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What security issue does inadequate input validation lead to most often?', ARRAY['A: Network congestion', 'B: Injection-based attacks', 'C: Improved performance', 'D: Lower memory usage'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is key stretching used in password storage mechanisms?', ARRAY['A: To reduce database size', 'B: To increase the computational cost of brute-force attacks', 'C: To encrypt passwords symmetrically', 'D: To eliminate the need for salting'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What security weakness does improper trust boundary definition cause?', ARRAY['A: Excessive logging', 'B: Unauthorized privilege escalation', 'C: Improved modularity', 'D: Reduced attack surface'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why are hardware security modules (HSMs) used for key management?', ARRAY['A: They accelerate application logic', 'B: They isolate cryptographic keys from application memory', 'C: They eliminate encryption overhead', 'D: They simplify network routing'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'How does address space layout randomization (ASLR) improve security?', ARRAY['A: By encrypting memory contents', 'B: By making memory addresses unpredictable', 'C: By preventing race conditions', 'D: By isolating processes physically'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What is the main risk of using unsigned software updates?', ARRAY['A: Reduced performance', 'B: Unauthorized code execution', 'C: Lower compatibility', 'D: Increased update frequency'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why are constant-time algorithms important in cryptographic operations?', ARRAY['A: They reduce CPU usage', 'B: They prevent timing side-channel attacks', 'C: They simplify implementation', 'D: They increase throughput'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What attack becomes possible due to improper CORS configuration?', ARRAY['A: DNS amplification', 'B: Unauthorized cross-origin data access', 'C: Man-in-the-middle interception', 'D: Privilege escalation'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why does container image scanning improve supply chain security?', ARRAY['A: It reduces deployment time', 'B: It detects known vulnerabilities in dependencies', 'C: It replaces runtime monitoring', 'D: It encrypts container images'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What security issue is caused by improper nonce reuse in encryption?', ARRAY['A: Key expiration', 'B: Loss of confidentiality', 'C: Authentication bypass', 'D: Increased ciphertext size'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is canonicalization important for input validation?', ARRAY['A: It improves performance', 'B: It ensures consistent interpretation of input data', 'C: It encrypts user input', 'D: It eliminates parsing errors'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What risk does excessive privilege assignment to services introduce?', ARRAY['A: Higher latency', 'B: Greater impact if the service is compromised', 'C: Reduced availability', 'D: Improved fault tolerance'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why are signed logs valuable in forensic investigations?', ARRAY['A: They reduce storage requirements', 'B: They ensure log integrity and non-repudiation', 'C: They improve log readability', 'D: They eliminate false positives'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'How does insecure dependency management affect applications?', ARRAY['A: It increases compilation time', 'B: It introduces transitive vulnerabilities', 'C: It reduces scalability', 'D: It limits portability'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is isolation between virtual machines critical?', ARRAY['A: It improves performance predictability', 'B: It prevents breakout attacks between tenants', 'C: It simplifies hypervisor design', 'D: It reduces hardware cost'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What vulnerability arises from improper file permission inheritance?', ARRAY['A: Denial of service', 'B: Unauthorized data exposure', 'C: Slower file access', 'D: Increased disk usage'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is secure secret injection preferred over hardcoding secrets?', ARRAY['A: It improves code readability', 'B: It limits exposure of secrets in source code and repositories', 'C: It increases encryption strength', 'D: It removes authentication steps'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What threat is mitigated by enforcing least functionality?', ARRAY['A: Brute-force attacks', 'B: Exploitation of unnecessary services', 'C: Phishing attacks', 'D: Credential stuffing'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why does improper certificate validation weaken TLS security?', ARRAY['A: It increases handshake time', 'B: It enables man-in-the-middle attacks', 'C: It weakens symmetric encryption', 'D: It reduces key entropy'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What risk does shared tenancy introduce in cloud environments?', ARRAY['A: Reduced scalability', 'B: Side-channel information leakage', 'C: Higher cost', 'D: Slower provisioning'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is secure memory wiping important after cryptographic operations?', ARRAY['A: To improve memory reuse', 'B: To prevent recovery of sensitive data', 'C: To reduce CPU cycles', 'D: To simplify debugging'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What security problem does improper API versioning introduce?', ARRAY['A: Slower development', 'B: Exposure of deprecated and vulnerable endpoints', 'C: Improved backward compatibility', 'D: Reduced scalability'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why are ephemeral credentials used in cloud access management?', ARRAY['A: To reduce authentication steps', 'B: To limit the lifetime of compromised credentials', 'C: To eliminate auditing', 'D: To simplify user onboarding'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'What risk does improper sandbox escape protection introduce?', ARRAY['A: Reduced performance', 'B: Execution of malicious code outside containment', 'C: Higher memory usage', 'D: Increased false positives'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';

INSERT INTO question_bank (domain_id, skill_name, difficulty, question, options, correct_answer)
SELECT d.id, 'Cyber Security', 'Hard', 'Why is auditability important in secure system design?', ARRAY['A: It replaces access control', 'B: It enables detection and investigation of security incidents', 'C: It improves encryption strength', 'D: It reduces system complexity'], 'B'
FROM domains d WHERE d.name = 'Cyber Security';
