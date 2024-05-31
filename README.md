# OpenCL-Matrix-Multiplication

This repository contains an implementation of matrix multiplication using OpenCL. It includes the OpenCL kernel, a host program, a golden measure C++ program for verification, and performance results.

## Repository Structure

├── OpenCL<br>
│ └── Kernel.cl # OpenCL kernel file<br>
├── goldenStandard<br>
│ ├── multiplicationGoldenStandard.cpp # C++ golden measure program<br>
│ └── goldenMeasureExecutable # Compiled executable of the golden measure<br>
├── performance_report.pdf # Performance results report<br>
├── platforms.cpp # Program to check the platform number<br>
├── multiplication.cpp # OpenCL host program<br>
└── README.md # This README file<br>

## Getting Started

### Prerequisites

Ensure you have the following installed:
- OpenCL SDK
- GCC compiler

### Compiling and Running the Programs

#### OpenCL Matrix Multiplication

1. **Compile the OpenCL host program:**

    ```sh
    g++ multiplication.cpp -o multiplication -lOpenCL
    ```

2. **Run the OpenCL program:**

    ```sh
    ./multiplication
    ```

#### Golden Measure C++ Matrix Multiplication

1. **Navigate to the `goldenStandard` directory:**

    ```sh
    cd goldenStandard
    ```

2. **Compile the golden measure program:**

    ```sh
    g++ multiplicationGoldenStandard.cpp -o goldenMeasure
    ```

3. **Run the golden measure program:**

    ```sh
    ./goldenMeasure
    ```

#### Platform Checker

1. **Compile the platform checker program:**

    ```sh
    g++ platforms.cpp -o platforms -lOpenCL
    ```

2. **Run the platform checker program:**

    ```sh
    ./platforms
    ```

## Performance Results

A detailed performance analysis report is included in the repository. You can find it in the `performance_report.pdf` file. This report compares the performance of the OpenCL implementation against the golden measure implementation.

## Files Description

- `OpenCL/Kernel.cl`: Contains the OpenCL kernel code for matrix multiplication.
- `multiplication.cpp`: The host program that sets up OpenCL and executes the matrix multiplication.
- `goldenStandard/multiplicationGoldenStandard.cpp`: A C++ program that implements matrix multiplication using a straightforward approach for verification.
- `goldenStandard/goldenMeasureExecutable`: The compiled executable of the golden measure program.
- `platforms.cpp`: A utility to check the available OpenCL platforms and their details.
- `performance_report.pdf`: A report detailing the performance results of the OpenCL matrix multiplication compared to the golden measure.

## Contributing

If you have any suggestions or improvements, feel free to submit a pull request. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License.

## Acknowledgments

- OpenCL SDK
- GCC Compiler

Feel free to explore and modify the code as needed. Happy coding!
