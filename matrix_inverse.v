`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//NAME: MANASI DUIEY
//PROJECT NAME: MATRIX INVERSION
//SEM: 3RD
//SUBJECT: LINEAR ALGEIRA
//////////////////////////////////////////////////////////////////////////////////
module matrix_inverse(clk,reset,output0,output1,output2,output3,output4,output5,output6,output7,output8,output9,output10,output11,output12,output13,output14,output15,output16,output17,output18,output19,output20,output21,output22,output23,output24);

//DECLARING INPUTS
input clk,reset;

//DECLARING REGISTER
reg [15:0] a [24:0];
reg [15:0] I [24:0];
reg [15:0] cnst;
integer i;

//DECLARING OUTPUT
output reg [15:0] output0,output1,output2,output3,output4,output5,output6,output7,output8,output9,output10,output11,output12,output13,output14,output15,output16,output17,output18,output19,output20,output21,output22,output23,output24;

//intialising input
always@(posedge clk)
begin
 a[0]=16'h1;
 a[1]=16'h0;
 a[2]=16'h0;
 a[3]=16'h0;
 a[4]=16'h0;
 
a[5]=16'h0;
a[6]=16'h1;
a[7]=16'h0;
a[8]=16'h0;
a[9]=16'h0;

a[10]=16'h0;
a[11]=16'h0;
a[12]=16'h1;
a[13]=16'h0;
a[14]=16'h0;

a[15]=16'h0;
a[16]=16'h0;
a[17]=16'h0;
a[18]=16'h1;
a[19]=16'h0;

a[20]=16'h0;
a[21]=16'h0;
a[22]=16'h0;
a[23]=16'h0;
a[24]=16'h1;

I[0]=16'b1;
I[1]=16'b0;
I[2]=16'b0;
I[3]=16'b0;
I[4]=16'b0;

I[5]=16'b0;
I[6]=16'b1;
I[7]=16'b0;
I[8]=16'b0;
I[9]=16'b0;

I[10]=16'b0;
I[11]=16'b0;
I[12]=16'b1;
I[13]=16'b0;
I[14]=16'b0;

I[15]=16'b0;
I[16]=16'b0;
I[17]=16'b0;
I[18]=16'b1;
I[19]=16'b0;

I[20]=16'b0;
I[21]=16'b0;
I[22]=16'b0;
I[23]=16'b0;
I[24]=16'b1;

//assinging cnst the value of a[0]
cnst=a[0];

//making a[0] equals to 1
a[0]=(a[0]/cnst);
a[1]=(a[1]/cnst);
a[2]=(a[2]/cnst);
a[3]=(a[3]/cnst);
a[4]=(a[4]/cnst);

I[0]=(I[0]/cnst);
I[1]=(I[1]/cnst);
I[2]=(I[2]/cnst);
I[3]=(I[3]/cnst);
I[4]=(I[4]/cnst);

//assinging cnst the value of a[5]
cnst=a[5];

//making a[5]=0
a[5]=a[5]-(a[0]*cnst);
a[6]=a[6]-(a[1]*cnst);
a[7]=a[7]-(a[2]*cnst);
a[8]=a[8]-(a[3]*cnst);
a[9]=a[9]-(a[4]*cnst);

I[5]=I[5]-(I[0]*cnst);
I[6]=I[6]-(I[1]*cnst);
I[7]=I[7]-(I[2]*cnst);
I[8]=I[8]-(I[3]*cnst);
I[9]=I[9]-(I[4]*cnst);

cnst=a[10];

//making a[10]=0
a[10]=a[10]-(a[0]*cnst);
a[11]=a[11]-(a[1]*cnst);
a[12]=a[12]-(a[2]*cnst);
a[13]=a[13]-(a[3]*cnst);
a[14]=a[14]-(a[4]*cnst);

I[10]=I[10]-(I[0]*cnst);
I[11]=I[11]-(I[1]*cnst);
I[12]=I[12]-(I[2]*cnst);
I[13]=I[13]-(I[3]*cnst);
I[14]=I[14]-(I[4]*cnst);

cnst=a[15];

//making a[15]=0
a[15]=a[15]-(a[0]*cnst);
a[16]=a[16]-(a[1]*cnst);
a[17]=a[17]-(a[2]*cnst);
a[18]=a[18]-(a[3]*cnst);
a[19]=a[19]-(a[4]*cnst);


I[15]=I[15]-(I[0]*cnst);
I[16]=I[16]-(I[1]*cnst);
I[17]=I[17]-(I[2]*cnst);
I[18]=I[18]-(I[3]*cnst);
I[19]=I[19]-(I[4]*cnst);

cnst=a[20];

//making a[20]=0
a[20]=a[20]-(a[0]*cnst);
a[21]=a[21]-(a[1]*cnst);
a[22]=a[22]-(a[2]*cnst);
a[23]=a[23]-(a[3]*cnst);
a[24]=a[24]-(a[4]*cnst);

I[20]=I[20]-(I[0]*cnst);
I[21]=I[21]-(I[1]*cnst);
I[22]=I[22]-(I[2]*cnst);
I[23]=I[23]-(I[3]*cnst);
I[24]=I[24]-(I[4]*cnst);

cnst=a[6];
//making a[6]=1
a[5]=(a[5]/cnst);
a[6]=(a[6]/cnst);
a[7]=(a[7]/cnst);
a[8]=(a[8]/cnst);
a[9]=(a[9]/cnst);

I[5]=(I[5]/cnst);
I[6]=(I[6]/cnst);
I[7]=(I[7]/cnst);
I[8]=(I[8]/cnst);
I[9]=(I[9]/cnst);

cnst=a[11];

//making a[11]=0
a[10]=a[10]-(cnst*a[5]);
a[11]=a[11]-(cnst*a[6]);
a[12]=a[12]-(cnst*a[7]);
a[13]=a[13]-(cnst*a[8]);
a[14]=a[14]-(cnst*a[9]);

 I[10]=I[10]-(cnst*I[5]);
 I[11]=I[11]-(cnst*I[6]);
 I[12]=I[12]-(cnst*I[7]);
 I[13]=I[13]-(cnst*I[8]);
 I[14]=I[14]-(cnst*I[9]);

cnst=a[16];

//making a[16]=0
 a[15]=a[15]-(cnst*a[5]);
 a[16]=a[16]-(cnst*a[6]);
 a[17]=a[17]-(cnst*a[7]);
 a[18]=a[18]-(cnst*a[8]);
 a[19]=a[19]-(cnst*a[9]);

 I[15]=I[15]-(cnst*I[5]);
 I[16]=I[16]-(cnst*I[6]);
 I[17]=I[17]-(cnst*I[7]);
 I[18]=I[18]-(cnst*I[8]);
 I[19]=I[19]-(cnst*I[9]);

cnst=a[21];

 //making a[21]=0
 a[20]=a[20]-(cnst*a[5]);
 a[21]=a[21]-(cnst*a[6]);
 a[22]=a[22]-(cnst*a[7]);
 a[23]=a[23]-(cnst*a[8]);
 a[24]=a[24]-(cnst*a[9]);

 I[20]=I[20]-(cnst*I[5]);
 I[21]=I[21]-(cnst*I[6]);
 I[22]=I[22]-(cnst*I[7]);
 I[23]=I[23]-(cnst*I[8]);
 I[24]=I[24]-(cnst*I[9]);

cnst=a[12];

//making a[12]=1
 a[10]=(a[10]/cnst);
 a[11]=(a[11]/cnst);
 a[12]=(a[12]/cnst);
 a[13]=(a[13]/cnst);
 a[14]=(a[14]/cnst);

 I[10]=(I[10]/cnst);
 I[11]=(I[11]/cnst);
 I[12]=(I[12]/cnst);
 I[13]=(I[13]/cnst);
 I[14]=(I[14]/cnst);

cnst=a[17];

//making a[17]=0
 a[15]=a[15]-(a[10]*cnst);
 a[16]=a[16]-(a[11]*cnst);
 a[17]=a[17]-(a[12]*cnst);
 a[18]=a[18]-(a[13]*cnst);
 a[19]=a[19]-(a[14]*cnst);

 I[15]=I[15]-(I[10]*cnst);
 I[16]=I[16]-(I[11]*cnst);
 I[17]=I[17]-(I[12]*cnst);
 I[18]=I[18]-(I[13]*cnst);
 I[19]=I[19]-(I[14]*cnst);

cnst=a[22];

//making a[22]=0
 a[20]=a[20]-(a[10]*cnst);
 a[21]=a[21]-(a[11]*cnst);
 a[22]=a[22]-(a[12]*cnst);
 a[23]=a[23]-(a[13]*cnst);
 a[24]=a[24]-(a[14]*cnst);

 I[15]=I[15]-(I[10]*cnst);
 I[16]=I[16]-(I[11]*cnst);
 I[17]=I[17]-(I[12]*cnst);
 I[18]=I[18]-(I[13]*cnst);
 I[19]=I[19]-(I[14]*cnst);

cnst=a[18];
 
 //making a[18]=1
 a[15]=(a[15]/cnst);
 a[16]=(a[16]/cnst);
 a[17]=(a[17]/cnst);
 a[18]=(a[18]/cnst);
 a[19]=(a[19]/cnst);

 I[15]=(I[15]/cnst);
 I[16]=(I[16]/cnst);
 I[17]=(I[17]/cnst);
 I[18]=(I[18]/cnst);
 I[19]=(I[19]/cnst);

cnst=a[23];

//making a[23]=0
 a[20]=a[20]-(cnst*a[15]);
 a[21]=a[21]-(cnst*a[16]);
 a[22]=a[22]-(cnst*a[17]);
 a[23]=a[23]-(cnst*a[18]);
 a[24]=a[24]-(cnst*a[19]);

 I[20]=I[20]-(cnst*I[15]);
 I[21]=I[21]-(cnst*I[16]);
 I[22]=I[22]-(cnst*I[17]);
 I[23]=I[23]-(cnst*I[18]);
 I[24]=I[24]-(cnst*I[19]);

cnst=a[24];

//making a[24]=1
 a[20]=(a[20]/cnst);
 a[21]=(a[21]/cnst);
 a[22]=(a[22]/cnst);
 a[23]=(a[23]/cnst);
 a[24]=(a[24]/cnst);

 I[20]=(I[20]/cnst);
 I[21]=(I[21]/cnst);
 I[22]=(I[22]/cnst);
 I[23]=(I[23]/cnst);
 I[24]=(I[24]/cnst);

//rref
cnst=a[1];

//making a[1]=0
 a[0]=a[0]-(cnst*a[5]);
 a[1]=a[1]-(cnst*a[6]);
 a[2]=a[2]-(cnst*a[7]);
 a[3]=a[3]-(cnst*a[8]);
 a[4]=a[4]-(cnst*a[9]);

 I[0]=I[0]-(cnst*I[5]);
 I[1]=I[1]-(cnst*I[6]);
 I[2]=I[2]-(cnst*I[7]);
 I[3]=I[3]-(cnst*I[8]);
 I[4]=I[4]-(cnst*I[9]);

cnst=a[7];

//making a[7]=0
 a[5]=a[5]-(cnst*a[10]);
 a[6]=a[6]-(cnst*a[11]);
 a[7]=a[7]-(cnst*a[12]);
 a[8]=a[8]-(cnst*a[13]);
 a[9]=a[9]-(cnst*a[14]);

 I[5]=I[5]-(cnst*I[10]);
 I[6]=I[6]-(cnst*I[11]);
 I[7]=I[7]-(cnst*I[12]);
 I[8]=I[8]-(cnst*I[13]);
 I[9]=I[9]-(cnst*I[14]);

cnst=a[2];

//making a[2]=0
 a[0]=a[0]-(cnst*a[10]);
 a[1]=a[1]-(cnst*a[11]);
 a[2]=a[2]-(cnst*a[12]);
 a[3]=a[3]-(cnst*a[13]);
 a[4]=a[4]-(cnst*a[14]);

 I[0]=I[0]-(cnst*I[10]);
 I[1]=I[1]-(cnst*I[11]);
 I[2]=I[2]-(cnst*I[12]);
 I[3]=I[3]-(cnst*I[13]);
 I[4]=I[4]-(cnst*I[14]);

cnst=a[13];

//making a[13]=0
 a[10]=a[10]-(cnst*a[15]);
 a[11]=a[11]-(cnst*a[16]);
 a[12]=a[12]-(cnst*a[17]);
 a[13]=a[13]-(cnst*a[18]);
 a[14]=a[14]-(cnst*a[19]);

 I[10]=I[10]-(cnst*I[15]);
 I[11]=I[11]-(cnst*I[16]);
 I[12]=I[12]-(cnst*I[17]);
 I[13]=I[13]-(cnst*I[18]);
 I[14]=I[14]-(cnst*I[19]);

cnst=a[8];

//making a[8]=0
 a[5]=a[5]-(cnst*a[15]);
 a[6]=a[6]-(cnst*a[16]);
 a[7]=a[7]-(cnst*a[17]);
 a[8]=a[8]-(cnst*a[18]);
 a[9]=a[9]-(cnst*a[19]);

 I[5]=I[5]-(cnst*I[15]);
 I[6]=I[6]-(cnst*I[16]);
 I[7]=I[7]-(cnst*I[17]);
 I[8]=I[8]-(cnst*I[18]);
 I[9]=I[9]-(cnst*I[19]);

cnst=a[3];

//making a[3]=0
 a[0]=a[0]-(cnst*a[15]);
 a[1]=a[1]-(cnst*a[16]);
 a[2]=a[2]-(cnst*a[17]);
 a[3]=a[3]-(cnst*a[18]);
 a[4]=a[4]-(cnst*a[19]);

 I[0]=I[0]-(cnst*I[15]);
 I[1]=I[1]-(cnst*I[16]);
 I[2]=I[2]-(cnst*I[17]);
 I[3]=I[3]-(cnst*I[18]);
 I[4]=I[4]-(cnst*I[19]);

//assigning output
output20=(I[20]/a[24]);
output21=(I[21]/a[24]);
output22=(I[22]/a[24]);
output23=(I[23]/a[24]);
output24=(I[24]/a[24]);

cnst=a[19];

//making a[19]=0
 a[15]=a[15]-(cnst*a[20]);
 a[16]=a[16]-(cnst*a[21]);
 a[17]=a[17]-(cnst*a[22]);
 a[18]=a[18]-(cnst*a[23]);
 a[19]=a[19]-(cnst*a[24]);

 output15=I[15]-(cnst*I[20]);
 output16=I[16]-(cnst*I[21]);
 output17=I[17]-(cnst*I[22]);
 output18=I[18]-(cnst*I[23]);
 output19=I[19]-(cnst*I[24]);

cnst=a[14];

//making a[14]=0
 a[10]=a[10]-(cnst*a[20]);
 a[11]=a[11]-(cnst*a[21]);
 a[12]=a[12]-(cnst*a[22]);
 a[13]=a[13]-(cnst*a[23]);
 a[14]=a[14]-(cnst*a[24]);

 output10=I[10]-(cnst*I[20]);
 output11=I[11]-(cnst*I[21]);
 output12=I[12]-(cnst*I[22]);
 output13=I[13]-(cnst*I[23]);
 output14=I[14]-(cnst*I[24]);

cnst=a[9];

//making a[9]=0
 a[5]=a[5]-(cnst*a[20]);
 a[6]=a[6]-(cnst*a[21]);
 a[7]=a[7]-(cnst*a[22]);
 a[8]=a[8]-(cnst*a[23]);
 a[9]=a[9]-(cnst*a[24]);

 output5=I[5]-(cnst*I[20]);
 output6=I[6]-(cnst*I[21]);
 output7=I[7]-(cnst*I[22]);
 output8=I[8]-(cnst*I[23]);
 output9=I[9]-(cnst*I[24]);

cnst=a[4];

//making a[4]=0
 a[0]=a[0]-(cnst*a[20]);
 a[1]=a[1]-(cnst*a[21]);
 a[2]=a[2]-(cnst*a[22]);
 a[3]=a[3]-(cnst*a[23]);
 a[4]=a[4]-(cnst*a[24]);

 output0=I[0]-(cnst*I[20]);
 output1=I[1]-(cnst*I[21]);
 output2=I[2]-(cnst*I[22]);
 output3=I[3]-(cnst*I[23]);
 output4=I[4]-(cnst*I[24]);
end

endmodule
