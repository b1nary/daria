#
# Modified fork of the gem "nixcolor"
# https://gist.github.com/b1nary/2991673
#
class NixColor
  @escape = "\x1b"
	##
	# Generate rgb colors
	def self.rgb(red, green, blue)
		16 + (red * 36) + (green * 6) + blue
	end

	##
	# set background to color
	def self.bg color
		"#{@escape}[48;5;#{color}m"
	end

	##
	# set foreground to color
	def self.fg color
		"#{@escape}[38;5;#{color}m"
	end

	##
	# lazy background "shortcut"
	def self.background color
		self.bg color
	end

	##
	# lazy foreground "shortcut"
	def self.foreground color
		self.fg color
	end

  ##
  # Bold
  def self.bold
    "#{@escape}[1m"
  end

  ##
  # Italic
  def self.italic
    "#{@escape}[3m"
  end

  ##
  # Thin
  def self.thin
    "#{@escape}[8m"
  end

  ##
  # Underscore
  def self.underscore
    "#{@escape}[4m"
  end

	##
	# Clear terminal from colors
	def self.clear_color
		"#{@escape}[0m"
	end

	##
	# Clear screen and reset cursor
	def self.clear
		"#{@escape}[2J#{@escape}[1;1H"
	end

end
