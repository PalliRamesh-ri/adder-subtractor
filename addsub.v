module fa(a,b,cin,sum,cout);
input a,b;
input  cin;
output sum;
output cout;

assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule

module x_or(y,a,b);
input a,b;
output y;
assign y=a^b;
endmodule



module addsub(a,b,cin,sum,cout);
input[3:0]a,b;
input cin;
output[3:0]sum;
output cout;

wire [2:0]w;
wire [3:0]y;

x_or g1(y[0],cin,b[0]);
x_or g2(y[1],cin,b[1]);
x_or g3(y[2],cin,b[2]);
x_or g4(y[3],cin,b[3]);


fa fa1(a[0],y[0],cin,sum[0],w[0]);
fa fa2(a[1],y[1],w[0],sum[1],w[1]);
fa fa3(a[2],y[2],w[1],sum[2],w[2]);
fa fa4(a[3],y[3],w[2],sum[3],cout);
endmodule
