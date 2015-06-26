require 'spec_helper'

describe 'squeezelite', :type => :class do
  let(:title) { 'squeezelite::install' }

  context 'with default parameters' do
    it { should contain_package('squeezelite')
        .with_ensure('present')
    }
  end

  context 'version => present' do
    let(:params) { {:version => 'present'} }

    it { should contain_package('squeezelite')
        .with_ensure('present')
    }
  end

  context 'version => latest' do
    let(:params) { {:version => 'latest'} }

    it { should contain_package('squeezelite')
        .with_ensure('latest')
    }
  end
end
