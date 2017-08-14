require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../song')

class TestSong < Minitest::Test

  def setup

    @the_boys = Song.new( "The Boys Are Back In Town", "Thin Lizzy", "Rock" )
    @bohemian = Song.new( "Bohemian Rhapsody", "Queen", "Classic Rock")
    @living_prayer = Song.new( "Living On A Prayer", "Bon Jovi", "Rock")
    @escuela_calor = Song.new( "Escuela De Calor", "Radio Futura", "Rock en Español")
    @all_by_myself = Song.new( "All By Myself", "Céline Dion", "Pop Ballad")

    @playlist_1 = [@the_boys, @bohemian, @living_prayer, @escuela_calor, @all_by_myself]
    @playlist_2 = []

  end

  def test_playlist_1_has_5_songs
    playlist = @playlist_1.count
    assert_equal(5, playlist)
  end

  def test_add_the_boys_to_playlist
    playlist_2 = @playlist_2.push(@the_boys)
    assert_equal( "The Boys Are Back In Town", playlist_2[0].name )
  end

  def test_add_escuela_to_playlist
    playlist_2 = @playlist_2.push(@escuela_calor)
    assert_equal( true , playlist_2.include?(@escuela_calor) )
  end

end
