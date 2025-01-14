/**********************************************************************
Copyright �2015 Advanced Micro Devices, Inc. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

�	Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
�	Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or
 other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
********************************************************************/
__kernel void helloworld(__global char* in, __global char* out)
{
	int num = get_global_id(0);

	
/*    Odwracanie wielko�ci znak�w


	if (in[num]>96 && in[num]<123){
		out[num] = in[num] - 32;
	}
	else if (in[num]>64 && in[num]<91){
		out[num] = in[num] + 32;
	}
	else{
		out[num] = in[num];
	}

*/
	
	
	
	int numb = in[num] - 48;

	if (numb > 16 && numb <32)
	{
		numb = numb - 7;
	}
	else if (numb > 16 + 32 && numb <32 + 32)
	{
		numb = numb - 7 - 32;
	}
	
	printf("abcd");
	
	for (int i = 0; i<8 ; i++)
	{
		out[num * 8 + 7 - i] = (numb & 1) + 48;
		numb = numb >> 1;
	}
	
}
