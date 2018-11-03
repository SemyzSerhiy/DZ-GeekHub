class Feature

  def self.sum_diff_product(first_number, second_number)
    {
      sum: first_number + second_number,
      diff: first_number - second_number,
      product: first_number * second_number
    }
  end

  def self.formula_solution(value_x, value_y)
    (value_x.abs - value_y.abs) / (1 + (value_x * value_y).abs).to_f
  end

  def self.volume_area_cube(length_of_the_edge)
    {
      volume: length_of_the_edge ** 3,
      area: 6 * length_of_the_edge ** 2
    }
  end

  def self.average_arithm_geomet_num(first_number, second_number)
    {
      arithmetical: (first_number + second_number) / 2.to_f,
      geometrical: Math.sqrt(first_number * second_number)
    }
  end

  def self.average_arithm_num_and_geomet_mod(first_number, second_number)
    {
      arithmetical: (first_number + second_number) / 2,
      geometrical: Math.sqrt(first_number.abs * second_number.abs)
    }
  end

  def self.area_hypotenuse_right_triangle(first_leg, second_leg)
    {
      area: 0.5 * first_leg * second_leg,
      hypotenuse: Math.sqrt(first_leg ** 2 + second_leg ** 2)
    }
  end

  def self.value_tempetature_water(f_volue, f_temperature, s_value, s_temperature)
    {
      value: f_volue + s_value,
      tempetature: ((f_volue * f_temperature) + (s_value * s_temperature)) / (f_volue + s_value).to_f
    }
  end

  def self.perimeter_right_multicutnik(number_of_corners, radius)
    number_of_corners * 2 * radius * Math.sin(Math::PI / number_of_corners)
  end

  def self.compound_resistance(first_resistance, second_resistance, third_resistance)
    1 / ((1 / first_resistance.to_f) + (1 / second_resistance.to_f) + (1 / third_resistance.to_f))
  end

  def self.fall_time(height, constant_g = 9.83)
    Math.sqrt(2 * height / constant_g)
  end

  def self.calculations_value_a_b(value_x, value_y, value_z)
    {
      value_a: (2 * Math.cos(value_x - Math::PI / 6)) / (1 / 2 + Math.sin(value_y) ** 2),
      value_b: 1 + (value_z ** 2 / 3 + value_z ** 2 / 5)
    }
  end

  def self.area_equilateral_triangle(side)
    (1 / 2.to_f) * side * Math.sqrt(side ** 2 - side ** 2 / 2)
  end

  def self.period_of_oscillation(length, constant_g = 9.83)
    2 * Math::PI * Math.sqrt(length / constant_g)
  end

  def self.force_of_gravity(first_mass, second_mass, distance, g = 0.000000000067385)
    g * ((first_mass * second_mass) / distance ** 2)
  end

  def self.second_leg_radius_inscribed_circle(first_leg, hypotenuse)
    second_leg = Math.sqrt(hypotenuse ** 2 - first_leg ** 2)
    triangle_semi_perimeter = 0.5 * (first_leg + hypotenuse + second_leg)
    {
      radius: Math.sqrt((triangle_semi_perimeter - first_leg) * (triangle_semi_perimeter - hypotenuse) *
        (triangle_semi_perimeter - second_leg)) / triangle_semi_perimeter,
      second_leg: second_leg
    }
  end

  def self.area_of_a_circle(circumference)
    radius = circumference / (2 * Math::PI)
    Math::PI * radius ** 2
  end

  def self.ring_area(inner_radius = 20, outer_radius)
    (Math::PI * (inner_radius ** 2 - outer_radius ** 2)).to_i
  end

  def self.sides_triangle(angles_A, angles_B, angles_C, radius)
    {
      side_a: calculate_triangle_sides(radius, angles_A),
      side_b: calculate_triangle_sides(radius, angles_B),
      side_c: calculate_triangle_sides(radius, angles_C)
    }
  end

  def self.meeting_time(acceleration_f, acceleration_s, speed_f, speed_s, distance)
    average_acceleration = (acceleration_f + acceleration_s) / 2
    average_speed = speed_f + speed_s
    (-average_speed + Math.sqrt(-average_speed ** 2 + (4 * distance * average_acceleration))) / (2 * average_acceleration)
  end

  def self.sum_of_arithmetic_progression(value_a, value_d, value_n)
    ((2 * value_a + (value_n - 1) * value_d) / 2) * value_n
  end

  def self.ravine_trapezium_area(greater_base, smaller_base, angle)
    (((greater_base + smaller_base) / 2) * ((greater_base - smaller_base) / 2) * Math.tan(angle)).to_i
  end

  def self.lengths_heig_med_bis_and_radius_circle(side_a, side_b, side_c)
    semiperimeter = ((side_a + side_b + side_c) / 2).to_f
    {
      #length height
      height_a: calculate_triangle_height(side_a, side_b, side_c, side_a),
      height_b: calculate_triangle_height(side_a, side_b, side_c, side_b),
      height_c: calculate_triangle_height(side_a, side_b, side_c, side_c),
      #length median
      median_a: calculate_triangle_median(side_b, side_c, side_a),
      median_b: calculate_triangle_median(side_a, side_c, side_b),
      median_c: calculate_triangle_median(side_a, side_b, side_c),
      #length bisector
      bisector_a: calculate_triangle_bisector(side_b, side_c, side_a),
      bisector_b: calculate_triangle_bisector(side_a, side_c, side_b),
      bisector_c: calculate_triangle_bisector(side_a, side_b, side_c),
      #radius circumscribed inscribed circle
      radius_circumscribed: (side_a * side_b * side_c / (4 * Math.sqrt(semiperimeter *
      (semiperimeter - side_a) * (semiperimeter - side_b) * (semiperimeter - side_c)))).round(1),
      radius_inscribed: Math.sqrt((semiperimeter - side_a) * (semiperimeter - side_b) *
        (semiperimeter - side_c) / semiperimeter).round(1)
    }
  end

  def self.distance_between_points(coordinates_x_frt_point, coordinates_y_frt_point,
    coordinates_x_scnd_point, coordinates_y_scnd_point)
    distance = (Math.sqrt((coordinates_x_scnd_point - coordinates_x_frt_point) ** 2 +
      (coordinates_y_scnd_point - coordinates_y_frt_point) ** 2)).round
  end

  def self.perimeter_ara_triangle(coordinates_x_point_a, coordinates_y_point_a, coordinates_x_point_b,
    coordinates_y_point_b, coordinates_x_point_c, coordinates_y_point_c)
    distance_a = calcuate_distance(coordinates_x_point_b, coordinates_x_point_a,
      coordinates_y_point_b,coordinates_y_point_a)
    distance_b = calcuate_distance(coordinates_x_point_b, coordinates_x_point_c,
      coordinates_y_point_b, coordinates_y_point_c)
    distance_c =  calcuate_distance(coordinates_x_point_c, coordinates_x_point_a,
      coordinates_y_point_c, coordinates_y_point_a)
    semiperimeter = ((distance_a + distance_b + distance_c) / 2)
    {
      perimeter: distance_a + distance_b + distance_c,
      area: Math.sqrt(semiperimeter * (semiperimeter - distance_a) * (semiperimeter - distance_b) *
        (semiperimeter - distance_c)).round
    }
  end

  def self.area_sector(number_arc, radius = 13.7)
    area = ((number_arc / 2.to_f) * radius ** 2).round
  end

  def self.angeles_triangle (side_a, side_b, side_c)
    angele_b = ((side_a ** 2 + side_c ** 2) - side_b ** 2) / (2 * side_c * side_a).to_f * 180
    angele_c = ((side_a ** 2 + side_b ** 2) - side_c ** 2) / (2 * side_b * side_a).to_f * 180
    angele_a = 180 - angele_b + angele_c
    {
      angele_a: angele_a.abs.round,
      angele_b: angele_b.abs.round,
      angele_c: angele_c.abs.round
    }
  end

  def self.calculate_equation_one_number(number_x)
    6 + number_x * (-5 + number_x * (4 - 3 * number_x + 2 * (number_x + number_x)))
  end

  def self.calculate_equation_two_number(num_x, num_y)
    num_x * (num_x + num_x + num_x - (num_y + num_y) - 7 * num_x + 15) + num_y * (10 - 4 * num_y) +
      num_x * (num_x + num_x - 3) + 6
  end

  def self.calculate_two_equations(num_x)
    {
      answer1: 1 + num_x * (-2 + num_x * (3 - 4 * num_x)),
      answer2: 1 + num_x * (2 + num_x * (3 + 4 * num_x))
    }
  end

  def self.min_max_two_number(num_x, num_y)
    a = num_x > num_y ? "max number is x= #{num_x}" : "max number is y= #{num_y}"
    b = num_x < num_y ? "min number is x= #{num_x}" : "min number is y = #{num_y}"
    {
      a: a,
      b: b,
      c: "#{a}, #{b}"
    }
  end

  def self.min_max_three_number(num_x, num_y, num_z)
    {
      a: " max number = #{ [num_x, num_y, num_z].max}",
      b: "min and max number = #{ [num_x, num_y, num_z].minmax}"
    }
  end

  def self.min_max_two_equations(num_x, num_y, num_z)
    a = num_x + num_y + num_z
    b = num_x * num_y * num_z
    {
      m: a > b ? "max sum equation = #{a}" : "max product equation = #{b} ",
      n: ((a / 2.to_f) ** 2) + 1 < b ** 2 + 1 ? "min sum equation= #{(a / 2.to_f) ** 2 + 1}" :
        " min product equation = #{b ** 2 + 1}"
    }
  end

  def self.inequality_a_less_b_less_c(num_a, num_b, num_c)
    (num_a < num_b && num_b < num_c) ? 'inequality a < b < c holds' : "inequality a < b < c don't holds"
  end

  def self.inequality_a_more_equal_b_more_equal_c(num_a, num_b, num_c)
    (num_a >= num_b && num_b >= num_c) ? "inequality a >= b >= c holds new a- #{num_a * 2}, b- #{num_b * 2}," \
    " c- #{num_c * 2}" : "inequality a >= b >= c don't holds new a-#{num_a.abs}, b-#{num_b.abs}, c-#{num_c.abs}"
  end

  def self.calculate_number_z(num_x, num_y)
    num_x > num_y ? "z = #{num_x - num_y}" : "z = #{num_y - (num_x + 1)}"
  end

  def self.comparisons_x_y_and_output(num_x, num_y)
    num_x > num_y ? "The first number is more = #{num_x}" : "both numbers #{num_x}, #{num_y}"
  end

  def self.comparisons_x_y_and_output_or_replacement_x_by_0(num_x, num_y)
    num_x <= num_y ? " Replace #{num_x = 0}" : "both numbers #{num_x}, #{num_y}"
  end

  def self.comparisons_x_y_and_replacement_less_halfsum_more_doubled(num_x, num_y)
    num_x > num_y ? " Replace x= #{x = (num_x + num_y) / 2.to_f}, y= #{y = num_x * num_y * 2}" :
      "Replace y= #{y = (num_x + num_y) / 2.to_f}, x= #{x = (num_x * num_y) * 2 }"
  end

  def self.squaring_non_negative_number(num_x, num_y, num_z)
    {
      a: num_x >= 0 ? "New x - #{num_x ** 2} " : nil,
      b: num_y >= 0 ? "New y - #{num_y ** 2} " : nil,
      c: num_z >= 0 ? "New z - #{num_z ** 2} " : nil
    }
  end

  def self.floor_round_ineteger_number_x(number_x)
    {
      a: number_x.floor,
      b: number_x.round,
      c: number_x.to_i
    }
  end

  def self.determine_even_number(number_x)
    number_x % 2 == 0 ? 'Number is even' : 'Number is  not even!'
  end

  def self.determine_venness_remainder_division_r_s(num_a, num_b, num_r, num_s)
    c = num_a % num_b
    {
      x: ('remainder equal to r' if c == num_r),
      y: ('remainder equal to s' if c == num_s),
      z: ('remainder not equal to s or r' if (c != num_r && c != num_s))
    }
  end

  def self.determining_hundreds_in_number(number_n)
    number_n > 99 ? "Your number have #{number_n / 100.to_i} hundreds" : 'Number must be more 99!'
  end

  def self.equality_square_number_n_cube_its_sum(number_n)
    a = number_n.to_s.split('').map.each {|x| x.to_i}.sum
    number_n ** 2 == a ** 3 ? 'They are equal' : 'They are not equal'
  end

  def self.including_sum_last_first_last_but_one_number_value_n(num_n)
    {
      including: num_n.to_s.split("").length,
      sum: num_n.to_s.split("").map.each {|x| x.to_i}.sum,
      last: num_n.to_s.split("").last.to_i,
      first: num_n.to_s.split("").first.to_i,
      last_but_one: num_n.to_s[-2].to_i
    }
  end

  def self.number_check(number)
    {
      a: number == number.to_s.reverse.to_i ? 'Number is palindrome' : 'Number is not palindrome',
      b: (number.to_s.split('').uniq.size == 2 && number != number.to_s.reverse.to_i) ?
        'Number have three the same digits' : "Number don't have three the same digits",
      c: number.to_s.split('') == number.to_s.split('').uniq ?
        'Number have all the different digits' : "Number don't have all the different digits"
    }
  end

  def self.calculate_the_progression
    result = 1
    (0.1..10).step(0.1) { |i| result *= 1 + Math.sin(i) }
    result
  end

  private

  def self.calculate_triangle_sides(r, angles)
    r * 2 * Math.sin(angles).abs
  end

  def self.calculate_triangle_height(side_a, side_b, side_c, opositive_side)
    semiperimeter = (side_a + side_b + side_c) / 2
    area = Math.sqrt(semiperimeter * (semiperimeter - side_a) * (semiperimeter - side_b) * (semiperimeter - side_c))
    (opositive_side / 2) * area.round(1)
  end

  def self.calculate_triangle_median(side_1, side_2, side_3)
    (Math.sqrt((2 * side_1 ** 2 + 2 * side_2** 2 - side_3 ** 2) / 2)).round(1)
  end

  def self.calculate_triangle_bisector(side_1, side_2, side_3)
    semiperimeter = (side_1 + side_2 + side_3) / 2
    (2 * Math.sqrt(side_1 * side_2 * semiperimeter * (semiperimeter - side_3)) / (side_1 + side_2))  .round(1)
  end
  def self.calcuate_distance(coordinate_x_point_1, ccoordinate_x_point_2,coordinate_y_point_1,coordinate_y_point_2)
    Math.sqrt((coordinate_x_point_1 - ccoordinate_x_point_2) ** 2 +
      (coordinate_y_point_1 - coordinate_y_point_2) ** 2).round
  end
end



