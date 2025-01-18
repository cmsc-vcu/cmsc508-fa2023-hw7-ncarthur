# CMSC 508 HW 7 Creating a Resume Database

Welcome to the Company Resume Database GitHub repository! This project is an exciting initiative to capture and manage the collective skills and certifications of all the talented individuals in our company. It's the brainchild of our visionary sensei, and we're thrilled to bring it to life under the guidance of the legendary mentor from the Kill-Bill fame. Very cool.

## Overview

This database represents a company-wide resume, capturing skills, employees, and their roles. It aims to help our sensei find employees with specific skills, list the skills of any employee, and identify gaps in the skill sets of employees in specific roles.

## Database Structure

### Skills and Certifications

- **ID**: Unique identifier for each skill.
- **Name**: Name of the skill.
- **Description**: Description of the skill.
- **URL**: URL where more information about the credential can be found.

### Employees

- **Employee ID**: Unique identifier for each employee.
- **Name**: Employee's full name.
- **Email Address**: Employee's email address.
- **LinkedIn URL**: URL to the employee's LinkedIn profile.
- **Headshot**: Image representing the employee.
- **Discord Handle**: Discord username.
- **Bio**: Brief biography of the employee.
- **Join Date**: Date when the employee joined the company.

### Roles

- **Role ID**: Unique identifier for each role.
- **Role Name**: Name of the role.
- **Sort ID**: ID for sorting purposes in report creation.

## Rendering QMD Files

1. Make sure you have Quarto installed on your system. You can download and install it from Quarto's official website.

2. Navigate to the root directory of the repository.

3. Open your terminal or command prompt.

4. Run the following command for the .qmd file: `quarto render design.qmd`

Replace `design.qmd` with the specific file you want to render.

5. Quarto will generate an HTML file in the same directory as the Markdown file.