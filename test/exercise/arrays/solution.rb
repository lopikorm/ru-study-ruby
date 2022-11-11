module Exercise
  module Arrays
    class << self
      def max(array)
        max = 0
        array.each { |el| el > max ? max = el : el }
        max
      end

      def replace(array)
        array.each_with_object([]) { |el, array_new| array_new << (el.positive? ? max(array) : el) }
      end

      def search(array, query, index = 0)
        first_index = 0

        last_index = array.length - 1

        array.size.zero? ? (return -1) : mid_index = first_index + ((last_index - first_index) / 2)

        if (array[0] > query) || (array[-1] < query) then (return -1) end

        array[mid_index] == query ? (return index + mid_index) : array[mid_index]

        array[mid_index] < query ? search(array[mid_index + 1, last_index], query, index + mid_index + 1) : search(array[first_index, mid_index], query, index)
      end
    end
  end
end
