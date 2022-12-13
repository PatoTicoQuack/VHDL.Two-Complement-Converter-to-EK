library ieee;
use ieee.std_logic_1164.all;

entity mux_2x6_tb is
end entity;

architecture teste of mux_2x6_tb is
    component mux_2x6 is 
        port(
              c : in std_logic_vector(4 downto 0);
             ek : in std_logic_vector(4 downto 0);
            sel : in std_logic;
              z : out std_logic_vector(4 downto 0)
        );
    end component;

    signal sc, sek : std_logic_vector(4 downto 0);
    signal    ssel : std_logic;
    signal      sz : std_logic_vector(4 downto 0);
begin
    u_mx2x6 : mux_2x6 port map(sc, sek, ssel, sz);

    u_teste : process
    begin
        
        sc <= "00000";
        sek <= "00001";
        ssel <= '1';   
        wait for 10 ns;

        sc <= "00000";
        sek <= "00001";
        ssel <= '0';
        wait for 10 ns;

        sc <= "00001";
        sek <= "00010";
        ssel <= '1';   
        wait for 10 ns;

        sc <= "00001";
        sek <= "00010";
        ssel <= '0';   
        wait for 10 ns;

        sc <= "00010";
        sek <= "00011";
        ssel <= '1';   
        wait for 10 ns;

        sc <= "00010";
        sek <= "00011";
        ssel <= '0';   
        wait for 10 ns;

        sc <= "00011";
        sek <= "00100";
        ssel <= '1';   
        wait for 10 ns;
        
        sc <= "00011";
        sek <= "00100";
        ssel <= '0';   
        wait for 10 ns;

        sc <= "00100";
        sek <= "00101";
        ssel <= '1';   
        wait for 10 ns;

        sc <= "00100";
        sek <= "00101";
        ssel <= '0';   
        wait for 10 ns;

        sc <= "00101";
        sek <= "00110";
        ssel <= '1';   
        wait for 10 ns;

        sc <= "00101";
        sek <= "00110";
        ssel <= '0';   
        wait for 10 ns;

        sc <= "00110";
        sek <= "00111";
        ssel <= '1';   
        wait for 10 ns;

        sc <= "00110";
        sek <= "00111";
        ssel <= '0';   
        wait for 10 ns;
        
        wait;
    end process;
 
end architecture;
