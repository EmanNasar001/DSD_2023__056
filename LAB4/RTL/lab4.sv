module lab4(input logic [1:0] a, b,
    output logic R, G, B

    );
   assign R=(~b[1]&(~b[0])) | (a[0]&a[1]) | (~b[1]&a[0]) |(a[1]&(~b[1]))|(a[1]&(~b[0]));
    assign G=(~a[1]&(~a[0])) | (b[1]&b[0]) |(~a[1]&b[0])|(~a[1]&b[1]) |(~a[0] &b[1]);
    assign B= (a[1]&(~b[1])) | (~a[1]&b[1]) | (~a[0]&b[0])| (a[0]&(~b[0]));
    
    
    
        
endmodule