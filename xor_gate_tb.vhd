library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate_tb is
end xor_gate_tb;

architecture Behavioral of xor_gate_tb is

    component xor_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

begin

    UUT: xor_gate
        port map (
            A => A,
            B => B,
            Y => Y
        );

    process
    begin

        -- Test 1: A=0, B=0
        A <= '0';
        B <= '0';
        wait for 10 ns;

        -- Test 2: A=0, B=1
        A <= '0';
        B <= '1';
        wait for 10 ns;

        -- Test 3: A=1, B=0
        A <= '1';
        B <= '0';
        wait for 10 ns;

        -- Test 4: A=1, B=1
        A <= '1';
        B <= '1';
        wait for 10 ns;

        wait;

    end process;

end Behavioral;