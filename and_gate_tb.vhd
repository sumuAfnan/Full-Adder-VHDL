library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate_tb is
end and_gate_tb;

architecture Behavioral of and_gate_tb is

    component and_gate
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

    UUT: and_gate
        port map (
            A => A,
            B => B,
            Y => Y
        );

    process
    begin

        -- Test 1: 0 AND 0 = 0
        A <= '0';
        B <= '0';
        wait for 10 ns;

        -- Test 2: 0 AND 1 = 0
        A <= '0';
        B <= '1';
        wait for 10 ns;

        -- Test 3: 1 AND 0 = 0
        A <= '1';
        B <= '0';
        wait for 10 ns;

        -- Test 4: 1 AND 1 = 1
        A <= '1';
        B <= '1';
        wait for 10 ns;

        wait;

    end process;

end Behavioral;