-- Employee Database Challenge Code

-- Deliverable 1: Retirement table with titles
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
ORDER BY e.emp_no;

-- Deliverable 1: Retirement table with titles, remove duplicates
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	ti.title
INTO unique_titles
FROM employees as e
LEFT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
ORDER BY e.emp_no, ti.to_date DESC;

-- Deliverable 1: Number of employees by recent job title
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count desc;


-- Deliverable 2: Mentorship Eligibility
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN titles as ti
ON e.emp_no =ti.emp_no
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
