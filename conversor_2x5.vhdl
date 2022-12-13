library ieee;
use ieee.std_logic_1164.all;

entity conversor_2x5 is 
    port(
           c : in std_logic_vector(4 downto 0);
          ek : out std_logic_vector(4 downto 0);
        erro : out std_logic
    );
end entity;

architecture comutar of conversor_2x5 is

begin
    -- atrib condicional
    ek(0) <= not(c(0));
    ek(1) <= (c(0) AND c(1)) OR (NOT(c(0)) AND NOT(c(1)) AND NOT(c(2))) OR (NOT(c(0)) AND NOT(c(1)) AND c(2));
    ek(2) <= (NOT(c(0)) AND NOT(c(1)) AND NOT(c(2))) OR (c(1) AND c(2)) OR (c(0) AND (c(2)));
    ek(3) <= (c(1) AND c(3)) OR (c(2) AND c(3)) OR (c(0) AND c(3)) OR (NOT(c(0)) AND NOT(c(1)) AND NOT(c(2)) AND NOT(c(3)));
    ek(4) <= c(1) OR c(2) OR (NOT(c(1)) AND c(3)) OR (c(0) AND NOT(c(1)) AND NOT(c(3)));
    erro <= '1' when c(4 downto 0) = "10000" else '0';
end architecture;
