
package com.mycompany.analisadorlexico;

import java.io.IOException;
import java.io. StringReader;

public class Teste {
    
    public static void main (String[] args) throws IOException {
        
        String expr = "if 2 + 3+a then";
        
        LexicalAnalyzer lexical = new LexicalAnalyzer(new StringReader (expr));
        lexical.yylex();
    }
    
}