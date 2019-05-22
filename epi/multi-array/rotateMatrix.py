def rotate_matrix(square_matrix):
    matrix_size = len(square_matrix) - 1
    for i in range(len(square_matrix) // 2):
        for j in range(i, matrix_size - i):
            (square_matrix[i][j], square_matrix[-j][i], square_matrix[-i][-j], square_matrix[j][-i]) = (square_matrix[-j][i], square_matrix[-i][-j], square_matrix[j][-i], square_matrix[i][j])
            
