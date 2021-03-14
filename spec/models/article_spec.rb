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
        expect(@article.errors.full_messages).to include("Name can't be blank")
      end

      it 'nameが41文字以上では投稿できない' do
        @article.name = 'サ' * 41
        @article.valid?
        expect(@article.errors.full_messages).to include("Name is too long (maximum is 40 characters)")
      end

      it 'prefecture_idが空では投稿できない' do
        @article.prefecture_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("Prefecture must be other than 1")
      end

      it 'bath_type_idが空では投稿できない' do
        @article.bath_type_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("Bath type must be other than 1")
      end

      it 'temperature_idが空では投稿できない' do
        @article.temperature_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("Temperature must be other than 1")
      end

      it 'breadth_idが空では投稿できない' do
        @article.breadth_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("Breadth must be other than 1")
      end

      it 'water_bath_idが空では投稿できない' do
        @article.water_bath_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("Water bath must be other than 1")
      end

      it 'break_space_idが空では投稿できない' do
        @article.break_space_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("Break space must be other than 1")
      end

      it 'budget_idが空では投稿できない' do
        @article.budget_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("Budget must be other than 1")
      end

      it 'number_of_visit_idが空では投稿できない' do
        @article.number_of_visit_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("Number of visit must be other than 1")
      end

      it 'evaluation_idが空では投稿できない' do
        @article.evaluation_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("Evaluation must be other than 1")
      end

      it 'general_commentが空では投稿できない' do
        @article.general_comment = ''
        @article.valid?
        expect(@article.errors.full_messages).to include("General comment can't be blank")
      end

      it 'general_commentが1001文字以上では投稿できない' do
        @article.general_comment = 'サ' * 1001
        @article.valid?
        expect(@article.errors.full_messages).to include("General comment is too long (maximum is 1000 characters)")
      end
    end
  end
end
