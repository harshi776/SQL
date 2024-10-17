CREATE TABLE Projects (
    project_id INT,
    project_name VARCHAR(50),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(10, 2),
    CONSTRAINT project_id_pk PRIMARY KEY (project_id)
);

CREATE TABLE Developers (
    developer_id INT,
    name VARCHAR(50),
    expertise VARCHAR(50),
    hire_date DATE,
    CONSTRAINT developer_id_pk PRIMARY KEY (developer_id)
);

CREATE TABLE Clients (
    client_id INT,
    name VARCHAR(50),
    contact_email VARCHAR(100),
    contact_number VARCHAR(15),
    CONSTRAINT client_id_pk PRIMARY KEY (client_id)
);

CREATE TABLE Tasks (
    task_id INT,
    project_id INT,
    developer_id INT,
    task_description VARCHAR(255),
    status VARCHAR(20),
    due_date DATE,
    CONSTRAINT task_id_pk PRIMARY KEY (task_id),
    CONSTRAINT project_fk FOREIGN KEY (project_id) REFERENCES Projects(project_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT developer_fk FOREIGN KEY (developer_id) REFERENCES Developers(developer_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO Projects (project_id, project_name, start_date, end_date, budget) VALUES
(1, 'Website Redesign', '2024-01-15', '2024-03-15', 15000.00),
(2, 'Mobile App Development', '2024-02-01', '2024-06-01', 30000.00),
(3, 'API Development', '2024-03-01', '2024-05-15', 20000.00);

INSERT INTO Developers (developer_id, name, expertise, hire_date) VALUES
(1, 'Alice Johnson', 'Frontend Development', '2022-05-10'),
(2, 'Bob Smith', 'Backend Development', '2021-08-15'),
(3, 'Charlie Brown', 'Full Stack Development', '2023-01-20');

INSERT INTO Clients (client_id, name, contact_email, contact_number) VALUES
(1, 'Tech Innovations', 'contact@techinnovations.com', '123-456-7890'),
(2, 'Web Solutions', 'support@websolutions.com', '234-567-8901');

INSERT INTO Tasks (task_id, project_id, developer_id, task_description, status, due_date) VALUES
(1, 1, 1, 'Design new homepage layout', 'In Progress', '2024-02-01'),
(2, 1, 2, 'Implement backend for user authentication', 'Pending', '2024-03-01'),
(3, 2, 3, 'Create wireframes for app screens', 'Completed', '2024-03-15'),
(4, 3, 2, 'Develop REST API endpoints', 'In Progress', '2024-05-01');

SELECT * FROM Projects;

SELECT * FROM Developers;

SELECT * FROM Clients;

SELECT t.task_id, p.project_name, d.name AS developer_name, t.task_description, t.status
FROM Tasks t
JOIN Projects p ON t.project_id = p.project_id
JOIN Developers d ON t.developer_id = d.developer_id;
