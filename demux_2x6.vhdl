-- Demultiplexador de 2 canais com 5 bit por canal
library ieee;
use ieee.std_logic_1164.all;

entity demux_2x6 is 
    port(
       entry : in std_logic_vector(4 downto 0);
         sel : in std_logic;
           c : out std_logic_vector(4 downto 0);
          ek : out std_logic_vector(4 downto 0)

    );
end entity;

architecture comutar of demux_2x6 is

begin
    -- atrib condicional
     c <= entry when sel = '0' else "ZZZZZ";
    ek <= entry when sel = '1' else "ZZZZZ";

end architecture;
