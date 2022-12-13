library ieee;
use ieee.std_logic_1164.all;

entity projetofinal_tb is 
end entity;

architecture behavior of projetofinal_tb is
    component conversor_2x5 is
        port(
               c : in std_logic_vector(4 downto 0);
              ek : out std_logic_vector(4 downto 0);
            erro : out std_logic
        );
    end component;
    
    component mux_2x6 is
        port(
             c  : in std_logic_vector(4 downto 0);
             ek : in std_logic_vector(4 downto 0);
            sel : in std_logic;
              z : out std_logic_vector(4 downto 0)
        );
    end component;

    component demux_2x6 is
        port(
           entry : in std_logic_vector(4 downto 0);
             sel : in std_logic;
               c : out std_logic_vector(4 downto 0);
              ek : out std_logic_vector(4 downto 0)
            );
    end component;

    signal sc : std_logic_vector(4 downto 0);
    signal sek : std_logic_vector(4 downto 0);
    signal   serro : std_logic;

    signal    ssel : std_logic;
    signal      sz : std_logic_vector(4 downto 0);

    signal sc0 : std_logic_vector(4 downto 0);
    signal sc1 : std_logic_vector(4 downto 0);

begin
    u_co2x5 : conversor_2x5 port map(sc, sek, serro);
    u_mx2x6 : mux_2x6 port map(sc, sek, ssel, sz);
    u_dm2x6 : demux_2x6 port map(sz, ssel, sc0, sc1);

    u_tb : process
    begin
        ssel <= '0';
        sc <= "00000";
        wait for 10 ns;

        sc <= "00001";
        wait for 10 ns;

        sc <= "00010";
        wait for 10 ns;

        sc <= "00011";
        wait for 10 ns;

        sc <= "00100";
        wait for 10 ns;

        sc <= "00101";
        wait for 10 ns;

        sc <= "00110";
        wait for 10 ns;

        sc <= "00111";
        wait for 10 ns;

        ssel <= '1';
        sc <= "01000";
        wait for 10 ns;

        sc <= "01001";
        wait for 10 ns;

        sc <= "01010";
        wait for 10 ns;

        sc <= "01011";
        wait for 10 ns;

        sc <= "01100";
        wait for 10 ns;

        sc <= "01101";
        wait for 10 ns;

        sc <= "01110";
        wait for 10 ns;

        sc <= "01111";
        wait for 10 ns;

        sc <= "10000";
        wait for 10 ns;
        wait;
    end process;
end architecture;
