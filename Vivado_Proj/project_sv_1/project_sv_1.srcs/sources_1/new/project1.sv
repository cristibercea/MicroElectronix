module project1;
int a[4];
longint b[8];
initial begin
  $display("Ana are %0d mere",$size(a));
  b='{9, 2, 7, 0, 3, 6, 1, $random};
  b.sort();
  foreach(b[i])
    $display("b[%0d] = %0d;",i,b[i]);
end
endmodule
