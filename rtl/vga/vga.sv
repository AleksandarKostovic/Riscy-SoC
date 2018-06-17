module vga(
    input logic clk,
    input logic pix,
    output logic hs,
    output logic vs,
    output logic blink,
    output logic animate,
    output logic [9:0] x,
    output logic [8:0] y 
    );

    localparam logic HS_STA = 16;
    localparam logic HS_END = 16 + 96;
    localparam logic HA_STA = 16 + 96 + 48;
    localparam logic VS_STA = 480 + 11;
    localparam logic VS_END = 480 + 11 + 2;
    localparam logic VA_END = 480;
    localparam logic LINE   = 800;
    localparam logic SCREEN = 524; 

    logic [9:0] h_count = 0;  
    logic [9:0] v_count = 0;  

    assign hs = ~((h_count >= HS_STA) & (h_count < HS_END));
    assign vs = ~((v_count >= VS_STA) & (v_count < VS_END));

    assign x = (h_count < HA_STA) ? 0 : (h_count - HA_STA);
    assign y = (v_count >= VA_END) ? (VA_END - 1) : (v_count);

    assign blink = ((h_count < HA_STA) | (v_count > VA_END - 1));

    assign animate = ((v_count == VA_END - 1) & (h_count == LINE));

    always_ff @ (posedge clk)
    begin
        if (pix)  
        begin
            if (h_count == LINE) 
            begin
                h_count <= 0;
                v_count <= v_count + 1;
            end
            else 
                h_count <= h_count + 1;

            if (v_count == SCREEN)
                v_count <= 0;
        end
    end
endmodule //vga 680x480
