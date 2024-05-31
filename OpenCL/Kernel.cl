
//TODO: set your arguments for the kernel. Note that you have to indicate if the argument is global or local. Global arguments are accessable by both host and this target device. While local can only be accessed by the device running this kernel. eg __global int* inputMatrixA, __local int* groupMemory

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




