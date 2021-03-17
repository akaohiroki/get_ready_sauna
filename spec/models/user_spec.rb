require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it '全ての項目が入力されていれば登録できる' do
        expect(@user).to be_valid
      end

      it 'imageが空でも登録できる' do
        @user.image = nil
        expect(@user).to be_valid
      end

      it 'nicknameが20文字以内であれば登録できる' do
        @user.nickname = 'a' * 20
        expect(@user).to be_valid
      end

      it 'emailに@が含まれていれば登録できる' do
        @user.email = 'test@com'
        expect(@user).to be_valid
      end

      it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
        @user.password = 'aaa000'
        @user.password_confirmation = 'aaa000'
        expect(@user).to be_valid
      end

      it 'passwordとpassword_confirmationが半角英数字混合であれば登録できる' do
        @user.password = 'aaa000'
        @user.password_confirmation = 'aaa000'
        expect(@user).to be_valid
      end

      it 'ageが半角数字であれば登録できる' do
        @user.age = 28
        expect(@user).to be_valid
      end

      it 'self_introductionが空でも登録できる' do
        @user.self_introduction = ''
        expect(@user).to be_valid
      end

      it 'self_introductionが1000字以内であれば投稿できる' do
        @user.self_introduction = 'サ' * 1000
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end

      it 'nicknameが21文字以上では登録できない' do
        @user.nickname = 'a' * 21
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームは20文字以内で入力してください")
      end

      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end

      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
      end

      it 'emailに@が含まれていなければ登録できない' do
        @user.email = 'test.com'
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールは不正な値です")
      end

      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end

      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end

      it 'passwordが5文字以下であれば登録できない' do
        @user.password = 'aaa00'
        @user.password_confirmation = 'aaa00'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end

      it 'passwordが半角英数字混合でなければ登録できない' do
        @user.password = '000000'
        @user.password_confirmation = '000000'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end

      it 'passwordが半角英文字のみでは登録できない' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end

      it 'passwordとpassword_confirmationが不一致では登録できないこと' do
        @user.password = 'aaa000'
        @user.password_confirmation = 'aab000'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end

      it 'ageが空では登録できない' do
        @user.age = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("年齢を入力してください")
      end

      it 'ageが半角数字のみでなければ登録できない' do
        @user.age = '28歳'
        @user.valid?
        expect(@user.errors.full_messages).to include("年齢は数値で入力してください")
      end

      it 'ageが全角数字では登録できない' do
        @user.age = '２８'
        @user.valid?
        expect(@user.errors.full_messages).to include("年齢は数値で入力してください")
      end

      it 'gender_idが未選択では登録できない' do
        @user.gender_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("性別は1以外の値にしてください")
      end

      it 'sauna_history_idが未選択では登録できない' do
        @user.sauna_history_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("サウナ歴は1以外の値にしてください")
      end

      it 'self_introductionが1001文字以上では登録できない' do
        @user.self_introduction = 'サ' * 1001
        @user.valid?
        expect(@user.errors.full_messages).to include("自己紹介は1000文字以内で入力してください")
      end
    end
  end
end