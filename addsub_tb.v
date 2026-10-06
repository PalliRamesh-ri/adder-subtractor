module addsub_tb();
reg [3:0]a,b;
reg cin;
wire[3:0]sum;
wire cout;

addsub uut(a,b,cin,sum,cout);
initial begin
$monitor("$time=%0t|a=%0b|b=%0b|cin=%0b|sum=%0b|cout=%0b",$time,a,b,cin,sum,cout);
repeat(5)begin
a=$urandom;
b=$urandom;
cin=$urandom;
#5;
end
end
endmodule
