# Payroll Management System (COBOL)

This repository contains a COBOL-based Payroll Management System that calculates an employee’s gross pay, tax deduction, and net pay. It demonstrates the use of COBOL for data input, numeric calculations, and formatted output, as well as best practices in legacy systems.

## Features
- **User Input**: Prompt users for Employee ID, Name, Hours Worked, Hourly Rate, and Tax Percentage.
- **Accurate Calculations**: Compute gross pay (hours × rate), calculate tax deduction, and determine net pay.
- **Formatted Output**: Display readable, edited numeric fields without leading zeros.
- **Legacy-friendly**: Shows structured COBOL code practices, fixed-format indentation, and proper data division usage.

## Requirements
- COBOL compiler (e.g., GnuCOBOL).
- A terminal or environment where input and output can be handled interactively.

## How to Run
1. Compile the program:
   ```bash
   cobc -x PayrollManagement.cob
   ```
2. Run the executable:
   ```bash
   ./PayrollManagement
   ```
3. Follow the on-screen prompts to enter data and view results.

## Example
**Input:**
```
Enter Employee ID (numeric up to 3 digits): 
1
Enter Employee Name (up to 20 chars): 
TOLGA
Enter Hours Worked (up to 3 digits): 
40
Enter Employee Hourly Rate (format: ####.##): 
25.00
Enter Tax Percentage (format: #.##, e.g. 0.13): 
0.13
```

**Output:**
```
Name: TOLGA
Employee ID:   1
Hours Worked:  40
Employee Hourly Rate:  25.00
Tax Percentage: 0.13
Gross Pay:  1000.00
Tax Deduction:  130.00
Net Pay:  870.00
```

## Contributing
Contributions are welcome. Feel free to open issues, submit pull requests, or provide suggestions for improvements.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
