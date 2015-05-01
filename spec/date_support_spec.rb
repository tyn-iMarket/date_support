require 'spec_helper'

describe Date do

  describe 'day_to' do
    let(:day_to) { date.day_to day }

    context 'date is 2015/5/3 (sunday)' do
      let(:date) { Date.new 2015, 5, 3 }

      context 'day to sunday' do
        let(:day) { :sunday }

        it { expect(day_to).to eq Date.new(2015, 5, 3) }
      end

      context 'day to wednesday' do
        let(:day) { :wednesday }

        it { expect(day_to).to eq Date.new(2015, 5, 6) }
      end

      context 'day to saturday' do
        let(:day) { :saturday }

        it { expect(day_to).to eq Date.new(2015, 5, 9) }
      end
    end

    context 'date is 2015/5/9 (saturday)' do
      let(:date) { Date.new 2015, 5, 9 }

      context 'day to sunday' do
        let(:day) { :sunday }

        it { expect(day_to).to eq Date.new(2015, 5, 3) }
      end

      context 'day to wednesday' do
        let(:day) { :wednesday }

        it { expect(day_to).to eq Date.new(2015, 5, 6) }
      end

      context 'day to saturday' do
        let(:day) { :saturday }

        it { expect(day_to).to eq Date.new(2015, 5, 9) }
      end
    end
  end

  describe 'week_of_month' do
    let(:week_of_month) { date.week_of_month }

    context 'date is 2015/8/1 (saturday)' do
      let(:date) { Date.new 2015, 8, 1 }

      it { expect(week_of_month).to eq 1 }
    end

    context 'date is 2015/8/9 (sunday)' do
      let(:date) { Date.new 2015, 8, 9 }

      it { expect(week_of_month).to eq 3 }
    end

    context 'date is 2015/5/31 (last week of May and first week of June)' do
      let(:date) { Date.new 2015, 5, 31 }

      it { expect(week_of_month).to eq 6 }
    end
  end

end
