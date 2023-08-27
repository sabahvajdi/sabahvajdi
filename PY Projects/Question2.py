def get_binary_one_count(start, end):
    """
    Counts the total number of ones in the binary representations of numbers
    within the range [start, end] (inclusive).

    Args:
        start (int): The starting number of the range.
        end (int): The ending number of the range.

    Returns:
        int: The total number of ones in the binary representations of numbers
             within the specified range.
    """
    total_ones = 0
    for num in range(start, end + 1):
        binary_representation = bin(num)[2:]  # Convert to binary and remove the '0b' prefix
        total_ones += binary_representation.count('1')
    return total_ones

# Example usage
start_num = 5
end_num = 8
result = get_binary_one_count(start_num, end_num)
print(f"The total number of ones in binary representation between {start_num} and {end_num} is: {result}")
