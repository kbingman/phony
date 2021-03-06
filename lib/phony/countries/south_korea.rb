# South Korean (Republic of Korea) phone numbers.
#
# http://en.wikipedia.org/wiki/Telephone_numbers_in_South_Korea
#
Phony::Countries::SouthKorea = Phony::Country.configured :local_format => [4, 4],
  :ndc_fallback_length => 2,
  :ndc_mapping => {
    :landline => [
                  '2', # Seoul
                 ],
    :mobile   => %w{ 10 11 12 13 14 15 16 17 18 19 },
    # TODO 4-digit services, like "unreasonable infringement of livelihood report" number :)
    #
    :service  => %w{ 30 50 60 70 80 100 101 105 106 107 108 109 111 112 113 114 115 116 117 118 119 120 121 122 123 125 127 128 129 131 132 134 141 182 188 }
  }