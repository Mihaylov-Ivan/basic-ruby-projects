require 'spec_helper'
require_relative '../ceaser-cipher/ceaser_cipher.rb'
require_relative '../sub-strings/sub_strings.rb'

RSpec.describe 'Basic Ruby Projects' do
  describe 'Ceaser Cipher' do
    string = "If he had anything confidential to say, he wrote it in cipher, that is, by so changing the order of the letters of the alphabet, that not a word could be made out. And a test for SYMBOLS: $&£(^"

    context 'when given a string and shift of 6' do
      xit 'returns a Ceaser Cipher encrypted string with shift of 6' do
        expected_string = "Ol nk ngj gteznotm iutlojktzogr zu yge, nk cxuzk oz ot iovnkx, zngz oy, he yu ingtmotm znk uxjkx ul znk rkzzkxy ul znk grvnghkz, zngz tuz g cuxj iuarj hk sgjk uaz. Gtj g zkyz lux YESHURY: $&£(^"
        expect(caesar_cipher(string, 6)).to eq(expected_string)
      end
    end

    context 'when given a string and shift of -13' do
      xit 'returns a Ceaser Cipher encrypted string with shift of -13' do
        expected_string = "Vs ur unq nalguvat pbasvqragvny gb fnl, ur jebgr vg va pvcure, gung vf, ol fb punatvat gur beqre bs gur yrggref bs gur nycunorg, gung abg n jbeq pbhyq or znqr bhg. Naq n grfg sbe FLZOBYF: $&£(^"
        expect(caesar_cipher(string, -13)).to eq(expected_string)
      end
    end
  end

  describe 'Sub String' do
    dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

    context 'when given an array of words and a string' do
      it 'returns a hash listing each substring (case insensitive) that was found in the given string and how many times it was found' do
        string = "Howdy partner, sit down! How's it going?"
        expected_hash = {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}
        expect(substrings(string, dictionary)).to eq(expected_hash)
      end
    end
  end
end