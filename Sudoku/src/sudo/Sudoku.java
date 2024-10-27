package sudo;
import java.util.Scanner;

public class Sudoku {

    // Método para validar si una fila es válida
    private static boolean isRowValid(int[][] grid, int row) {
        boolean[] seen = new boolean[9];
        for (int col = 0; col < 9; col++) {
            int num = grid[row][col];
            if (num < 1 || num > 9 || seen[num - 1]) {
                return false;
            }
            seen[num - 1] = true;
        }
        return true;
    }

    // Método para validar si una columna es válida
    private static boolean isColValid(int[][] grid, int col) {
        boolean[] seen = new boolean[9];
        for (int row = 0; row < 9; row++) {
            int num = grid[row][col];
            if (num < 1 || num > 9 || seen[num - 1]) {
                return false;
            }
            seen[num - 1] = true;
        }
        return true;
    }

    // Método para validar si una subcuadrícula 3x3 es válida
    private static boolean isSubGridValid(int[][] grid, int startRow, int startCol) {
        boolean[] seen = new boolean[9];
        for (int row = 0; row < 3; row++) {
            for (int col = 0; col < 3; col++) {
                int num = grid[startRow + row][startCol + col];
                if (num < 1 || num > 9 || seen[num - 1]) {
                    return false;
                }
                seen[num - 1] = true;
            }
        }
        return true;
    }

    // Método para validar todo el Sudoku
    public static boolean isSudokuValid(int[][] grid) {
        // Validar filas y columnas
        for (int i = 0; i < 9; i++) {
            if (!isRowValid(grid, i) || !isColValid(grid, i)) {
                return false;
            }
        }

        // Validar subcuadrículas 3x3
        for (int row = 0; row < 9; row += 3) {
            for (int col = 0; col < 9; col += 3) {
                if (!isSubGridValid(grid, row, col)) {
                    return false;
                }
            }
        }

        return true;
    }

    // Método principal
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[][] grid = new int[9][9];

        System.out.println("Introduce los 81 números del Sudoku, fila por fila:");
        for (int row = 0; row < 9; row++) {
            for (int col = 0; col < 9; col++) {
                grid[row][col] = scanner.nextInt();
            }
        }

        if (isSudokuValid(grid)) {
            System.out.println("El Sudoku es válido.");
        } else {
            System.out.println("El Sudoku es inválido.");
        }

        scanner.close();
    }
}
