module S_tb (
    reg Press;
    reg q;
    reg clk;
    reg state;
    reg Open_CW;
    reg Open_CCW;
);

System_Src System_Tb ( .q(q),
                       .Press(Press),
                       .state(state),
                       .Open_CW(Open_CW),
                       .Open_CCW(Open_CCW));

    always #10 clk = ~clk;

    initial begin
        clk <= 0;
        Press <= 0;

        #30 Press <=1;
        #30 Press <=0;
        #30 Press <=1;
        #30 Press <=0;

        #30 Press <=1;
        #30 Press <=1;
        #30 Press <=0;
        #30 Press <=1;
        #30 Press <=0;

        #30 Press <=0;
        #30 Press <=1;
        #30 Press <=0;
        #30 Press <=1;
        #30 Press <=0;
    end
    
endmodule