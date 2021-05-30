require 'rails_helper'

RSpec.describe '等価matchers' do
  let(:string1) { 'kuro-neko' }
  let(:string2) { string1 }
  let(:integer1) { 3 }
  let(:integer2) { 3.0 }

  describe 'eqを使用' do
    context '内容が同一の文字列の場合' do
      it { expect(string1).to eq(string2) }
    end

    context '内容が異なる文字列の場合' do
      let(:string2) {'shiro-neko'}
      it { expect(string1).not_to eq(string2) }
    end

    context '同一の数値の場合' do
      it { expect(integer1).to eq(integer2) }
    end
  end

  describe '他に...' do
    describe '==を使用' do
      context '内容が同一の文字列の場合' do
        it { expect(string1).to be == string2 }
      end
    end

    describe 'eqlを使用' do
      context '内容が同一の文字列の場合' do
        it { expect(string1).to eql(string2) }
      end
    end

    describe 'equalを使用' do
      context '内容が同一の文字列の場合' do
        it { expect(string1).to equal(string2) }
      end
    end

    describe 'beを使用' do
      context '内容が同一の文字列の場合' do
        it { expect(string1).to be(string2) }
      end
    end
  end
end