module lab5(input logic [3:0] a,
    input logic [2:0]s,

output logic segA, 
output logic segB,
output  logic segC,
output  logic segD,
output  logic segE,
output  logic segF,
output  logic segG,
output logic [7:0] A




    );
    assign segA= (~a[3]&(~a[2])&(~a[1])&a[0]) | (a[3]&(~a[2])&a[1]&a[0]) |(a[3]&a[2]&(~a[1])&a[0])| (~a[3]&a[2]&(~a[1])&(~a[0]));
    assign segB=(a[2]&a[1]&(~a[0]))|(a[3]&a[2]&a[1])|(a[3]&a[1]&a[0])|(a[3]&a[2]&(~a[0]));
    assign segC= (a[3]&a[2]&a[1])|(a[3]&a[2]&(~a[0]))|(~a[3]&(~a[2])&a[1]&(~a[0]));
    assign segD=(~a[3]&(~a[2])&(~a[1])&a[0])| (~a[3]&a[2]&(~a[1])&(~a[0]))|(a[2]&a[1]&a[0])|(a[3]&(~a[2])&a[1]&(~a[0]));
    assign segE=(~a[3]&a[0])|(~a[2]&(~a[1])&(a[0]))|(~a[3]&a[2]&(~a[1]));
    assign segF=(~a[3]&a[1]&a[0])|(~a[3]&(~a[2])&a[1])|(~a[3]&(~a[2])&a[0])|(a[3]&a[2]&(~a[1])&a[0]);
    assign segG=(~a[3]&(~a[2])&(~a[1])) | (~a[3]&a[2]&a[1]&a[0])|(a[3]&a[2]&(~a[1])&(~a[0]));
    assign A[0]=( s[2]| s[1] |s[0]);
    assign A[1]=(s[2]|s[1]|(~s[0]));
    assign A[2]=(s[2]|(~s[1])|s[0]);
    assign A[3]=(s[2]|(~s[1])|(~s[0]));
    assign A[4]=(~s[2]|s[1]|s[0]);
    assign A[5]=(~s[2]|s[1]|(~s[0]));
    assign A[6]=(~s[2]|(~s[1])|s[0]);
    assign A[7]=(~s[2]|(~s[1])|(~s[0]));
    
    
    
    
    
endmodule

