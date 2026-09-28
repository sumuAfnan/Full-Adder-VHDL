library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_8bit_tb is
end full_adder_8bit_tb;

architecture Behavioral of full_adder_8bit_tb is

    component full_adder_8bit
        Port (
            A    : in  STD_LOGIC_VECTOR (7 downto 0);
            B    : in  STD_LOGIC_VECTOR (7 downto 0);
            Cin  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR (7 downto 0);
            COUT : out STD_LOGIC
        );
    end component;

    signal A    : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal B    : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal Cin  : STD_LOGIC := '0';
    signal SUM  : STD_LOGIC_VECTOR (7 downto 0);
    signal COUT : STD_LOGIC;

begin

    UUT: full_adder_8bit
        port map (
            A    => A,
            B    => B,
            Cin  => Cin,
            SUM  => SUM,
            COUT => COUT
        );

    process
    begin

        -- Test 1: 0 + 0 + 0 = 0
        A <= "00000000";
        B <= "00000000";
        Cin <= '0';
        wait for 10 ns;

        -- Test 2: 1 + 1 = 2
        A <= "00000001";
        B <= "00000001";
        Cin <= '0';
        wait for 10 ns;

        -- Test 3: 5 + 3 = 8
        A <= "00000101";
        B <= "00000011";
        Cin <= '0';
        wait for 10 ns;

        -- Test 4: 15 + 1 = 16
        A <= "00001111";
        B <= "00000001";
        Cin <= '0';
        wait for 10 ns;

        -- Test 5: 100 + 50 = 150
        A <= "01100100";
        B <= "00110010";
        Cin <= '0';
        wait for 10 ns;

        -- Test 6: 255 + 1 = 256
        -- 8-bit SUM becomes 00000000 and COUT becomes 1
        A <= "11111111";
        B <= "00000001";
        Cin <= '0';
        wait for 10 ns;

        -- Test 7: 255 + 255 = 510
        A <= "11111111";
        B <= "11111111";
        Cin <= '0';
        wait for 10 ns;

        -- Test 8: 10 + 20 + Cin = 31
        A <= "00001010";
        B <= "00010100";
        Cin <= '1';
        wait for 10 ns;

        wait;

    end process;

end Behavioral;