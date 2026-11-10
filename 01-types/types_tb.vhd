LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY types_tb IS
END ENTITY;

ARCHITECTURE sim OF types_tb IS
BEGIN
    PROCESS
        VARIABLE bits : STD_LOGIC_VECTOR(7 DOWNTO 0) := "11111001";
        VARIABLE u : UNSIGNED(7 DOWNTO 0);
        VARIABLE s : SIGNED(7 DOWNTO 0);
        VARIABLE EXM : unsigned(7 DOWNTO 0) := "11001000";
        VARIABLE N_EMX : signed(8 DOWNTO 0) := (OTHERS => '0');
    BEGIN
        u := UNSIGNED(bits);
        s := SIGNED(bits);
        REPORT "bits : " & to_string(bits);
        REPORT "unsigned : " & INTEGER'image(to_integer(u));
        REPORT "signed   : " & INTEGER'image(to_integer(s));
        s := to_signed(-7, 8);
        REPORT "to_signed(-7, 8)    : " & to_string(s);

        s := to_signed(200, 8);
        REPORT "to_signed(200, 8)   : " & to_string(s) & " = " & INTEGER'image(to_integer(s));

        u := to_unsigned(300, 8);
        REPORT "to_unsigned(300, 8) : " & to_string(u) & " = " & INTEGER'image(to_integer(u));

        REPORT "----------------------------------------------------";
        REPORT "----------------------------------------------------";
        REPORT "----------------------------------------------------";
        N_EMX := SIGNED('0' & EXM);
        REPORT "'0' & ile : " & INTEGER'IMAGE(TO_INTEGER(N_EMX));

        s := SIGNED(EXM);
        REPORT "bozuk (8 bit signed) : " & INTEGER'IMAGE(TO_INTEGER(s));
        N_EMX := TO_SIGNED(TO_INTEGER(EXM),9);
        REPORT "TO_SIGNED ILE : " & INTEGER'IMAGE(TO_INTEGER(N_EMX));
        WAIT;
    END PROCESS;
END sim;