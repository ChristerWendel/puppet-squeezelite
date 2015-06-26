require 'spec_helper'

describe 'squeezelite', :type => :class do
  let(:title) { 'squeezelite::service' }

  context 'with default parameters' do
    it { should contain_service('squeezelite')
        .with_ensure('running')
        .with_enable('true')
    }
  end

  context 'enable => false' do
    let(:params) { {:enable => 'false'} }

    it { should contain_service('squeezelite')
        .with_ensure('running')
        .with_enable('false')
    }
  end

  context 'start => false' do
    let(:params) { {:start => 'false'} }

    it { should contain_service('squeezelite')
        .with_ensure('stopped')
        .with_enable('true')
    }
  end
end
