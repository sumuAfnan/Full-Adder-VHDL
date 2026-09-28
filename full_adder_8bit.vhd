library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_8bit is
    Port (
        A    : in  STD_LOGIC_VECTOR (7 downto 0);
        B    : in  STD_LOGIC_VECTOR (7 downto 0);
        Cin  : in  STD_LOGIC;
        SUM  : out STD_LOGIC_VECTOR (7 downto 0);
        COUT : out STD_LOGIC
    );
end full_adder_8bit;


architecture Structural of full_adder_8bit is

    -- Previous 1-bit Full Adder
    component full_adder
        Port (
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            Cin  : in  STD_LOGIC;
            SUM  : out STD_LOGIC;
            COUT : out STD_LOGIC
        );
    end component;

    -- Carry signals
    signal C0 : STD_LOGIC;
    signal C1 : STD_LOGIC;
    signal C2 : STD_LOGIC;
    signal C3 : STD_LOGIC;
    signal C4 : STD_LOGIC;
    signal C5 : STD_LOGIC;
    signal C6 : STD_LOGIC;

begin

    -- 1st Full Adder
    FA0: full_adder
        port map (
            A    => A(0),
            B    => B(0),
            Cin  => Cin,
            SUM  => SUM(0),
            COUT => C0
        );

    -- 2nd Full Adder
    FA1: full_adder
        port map (
            A    => A(1),
            B    => B(1),
            Cin  => C0,
            SUM  => SUM(1),
            COUT => C1
        );

    -- 3rd Full Adder
    FA2: full_adder
        port map (
            A    => A(2),
            B    => B(2),
            Cin  => C1,
            SUM  => SUM(2),
            COUT => C2
        );

    -- 4th Full Adder
    FA3: full_adder
        port map (
            A    => A(3),
            B    => B(3),
            Cin  => C2,
            SUM  => SUM(3),
            COUT => C3
        );

    -- 5th Full Adder
    FA4: full_adder
        port map (
            A    => A(4),
            B    => B(4),
            Cin  => C3,
            SUM  => SUM(4),
            COUT => C4
        );

    -- 6th Full Adder
    FA5: full_adder
        port map (
            A    => A(5),
            B    => B(5),
            Cin  => C4,
            SUM  => SUM(5),
            COUT => C5
        );

    -- 7th Full Adder
    FA6: full_adder
        port map (
            A    => A(6),
            B    => B(6),
            Cin  => C5,
            SUM  => SUM(6),
            COUT => C6
        );

    -- 8th Full Adder
    FA7: full_adder
        port map (
            A    => A(7),
            B    => B(7),
            Cin  => C6,
            SUM  => SUM(7),
            COUT => COUT
        );

end Structural;