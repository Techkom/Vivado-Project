module S_Src (input Press, 
              input clk,
              output reg q,
              output reg state,
              output reg Open_CW,
              output reg Open_CCW);

    always @(posedge clk) begin
        always @(Press) begin
            if (Press == 1) begin
                case (state)
                    0: begin
                        state <= 1;
                    end
                    2: begin
                         state <= 3;
                    end
                endcase
            end
            else if (Press == 0) begin
                case (state)
                    1: begin
                        state <= 2;
                    end
                    3: begin
                        state <= 0;
                    end
                endcase
                
            end
            end
        end
        case (state)
            0: begin
                Open_CW <= 0;
                Open_CCW <= 0;
                q <= "w_closed_loop";
            end
            1: begin
                Open_CW <= 1;
                Open_CCW <= 0;
                q <= "w_closed_loop";
            end
            2: begin
                Open_CW <= 0;
                Open_CCW <= 0;
                q <= "w_closed_loop";
            end
            3: begin
                Open_CW <= 0;
                Open_CCW <= 1;
                q <= "w_closed_loop";
            end
        endcase
    end