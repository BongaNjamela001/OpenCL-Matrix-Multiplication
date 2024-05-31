
__kernel void matrixMultiplication(__global int* matrixA, __global int* matrixB, __global int* output, int Size){
	
    
    //TODO: program your kernel here		
    int row = get_global_id(0);
    int col = get_global_id(1);
	
    // Initialize output value for this thread
    int sum = 0;
    int aindex = row*Size;
    int bindex = col;
    int cindex = row*Size + col;

    // Perform matrix multiplication
    for (int k = 0; k < Size; ++k) {
        sum += matrixA[aindex] * matrixB[bindex];
	aindex++;
	bindex += Size;
    }

    // Store the result in the output matrix
    output[cindex] = sum;
}




