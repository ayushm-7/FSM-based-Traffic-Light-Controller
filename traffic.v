module traffic_light(
    input clk,
    input reset,
    output reg [2:0] out
);

// State Encoding
parameter RED_STATE    = 2'b00,
          YELLOW_STATE = 2'b01,
          GREEN_STATE  = 2'b10;

// Output Encoding
parameter RED    = 3'b100,
          YELLOW = 3'b010,
          GREEN  = 3'b001;

reg [1:0] state, next_state;

always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= RED_STATE;
    else
        state <= next_state;
end

always @(*)
begin
    case(state)

        RED_STATE:
            next_state = GREEN_STATE;

        GREEN_STATE:
            next_state = YELLOW_STATE;

        YELLOW_STATE:
            next_state = RED_STATE;

        default:
            next_state = RED_STATE;

    endcase
end

always @(*)
begin
    case(state)

        RED_STATE:
            out = RED;

        GREEN_STATE:
            out = GREEN;

        YELLOW_STATE:
            out = YELLOW;

        default:
            out = RED;

    endcase
end

endmodule
