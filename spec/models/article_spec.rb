require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
    @article = FactoryBot.build(:article)
  end

  describe '記事投稿' do
    context '記事投稿できるとき' do
      it '全ての項目が入力されていれば投稿できる' do
        expect(@article).to be_valid
      end

      it 'nameが40字以内であれば投稿できる' do
        @article.name = 'サ' * 40
        expect(@article).to be_valid
      end

      it 'general_commentが1000字以内であれば投稿できる' do
        @article.general_comment = 'サ' * 1000
        expect(@article).to be_valid
      end

      it 'imageが存在していなくても投稿できる' do
        @article.image = nil
        expect(@article).to be_valid
      end
    end

    context '記事投稿ができないとき' do
      it 'nameが空では投稿できない' do
        @article.name = ''
        @article.valid?
        expect(@article.errors.full_messages).to include("サウナ名を入力してください")
      end

      it 'nameが41文字以上では投稿できない' do
        @article.name = 'サ' * 41
        @article.valid?
        expect(@article.errors.full_messages).to include("サウナ名は40文字以内で入力してください")
      end

      it 'prefecture_idが空では投稿できない' do
        @article.prefecture_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("所在地は1以外の値にしてください")
      end

      it 'bath_type_idが空では投稿できない' do
        @article.bath_type_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("風呂の種類は1以外の値にしてください")
      end

      it 'temperature_idが空では投稿できない' do
        @article.temperature_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("サウナの温度は1以外の値にしてください")
      end

      it 'breadth_idが空では投稿できない' do
        @article.breadth_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("サウナの広さは1以外の値にしてください")
      end

      it 'water_bath_idが空では投稿できない' do
        @article.water_bath_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("水風呂の温度は1以外の値にしてください")
      end

      it 'break_space_idが空では投稿できない' do
        @article.break_space_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("休憩スペースは1以外の値にしてください")
      end

      it 'budget_idが空では投稿できない' do
        @article.budget_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("予算は1以外の値にしてください")
      end

      it 'number_of_visit_idが空では投稿できない' do
        @article.number_of_visit_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("来店回数は1以外の値にしてください")
      end

      it 'evaluation_idが空では投稿できない' do
        @article.evaluation_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("総合評価は1以外の値にしてください")
      end

      it 'general_commentが空では投稿できない' do
        @article.general_comment = ''
        @article.valid?
        expect(@article.errors.full_messages).to include("サウナの総評を入力してください")
      end

      it 'general_commentが1001文字以上では投稿できない' do
        @article.general_comment = 'サ' * 1001
        @article.valid?
        expect(@article.errors.full_messages).to include("サウナの総評は1000文字以内で入力してください")
      end
    end
  end
end