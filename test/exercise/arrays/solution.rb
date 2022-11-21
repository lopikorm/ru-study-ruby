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

      def search(array, query, first_index = 0, last_index = array.length - 1)
        return -1 if array.size.zero? || (array[0] > query) || (array[-1] < query) || first_index > last_index

        mid_index = first_index + ((last_index - first_index) / 2)

        return mid_index if array[mid_index] == query

        array[mid_index] < query ? search(array, query, mid_index + 1, last_index) : search(array, query, first_index, mid_index - 1)
      end
    end
  end
end
