require 'spec_helper'
require_relative '../ceaser-cipher/ceaser_cipher.rb'

RSpec.describe 'Basic Ruby Projects' do
  describe 'Ceaser Cipher' do
    string = "If he had anything confidential to say, he wrote it in cipher, that is, by so changing the order of the letters of the alphabet, that not a word could be made out. And a test for SYMBOLS: $&£(^"

    context 'when given a string and shift of 6' do
      it 'returns a Ceaser Cipher encrypted string with shift of 6' do
        expected_string = "Ol nk ngj gteznotm iutlojktzogr zu yge, nk cxuzk oz ot iovnkx, zngz oy, he yu ingtmotm znk uxjkx ul znk rkzzkxy ul znk grvnghkz, zngz tuz g cuxj iuarj hk sgjk uaz. Gtj g zkyz lux YESHURY: $&£(^"
        expect(caesar_cipher(string, 6)).to eq(expected_string)
      end
    end

    context 'when given a string and shift of -13' do
      it 'returns a Ceaser Cipher encrypted string with shift of -13' do
        expected_string = "Vs ur unq nalguvat pbasvqragvny gb fnl, ur jebgr vg va pvcure, gung vf, ol fb punatvat gur beqre bs gur yrggref bs gur nycunorg, gung abg n jbeq pbhyq or znqr bhg. Naq n grfg sbe FLZOBYF: $&£(^"
        expect(caesar_cipher(string, -13)).to eq(expected_string)
      end
    end
  end

end