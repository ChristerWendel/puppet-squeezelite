require 'spec_helper'

describe 'squeezelite', :type => :class do
  let(:title) { 'squeezelite::configure' }

  context 'with default parameters' do
    it { should contain_augeas('squeezelite.cfg')
      .with_context('/files/etc/default/squeezelite')
      .without_changes(/set SL_NAME/)
      .with_changes(/set SB_EXTRA_ARGS \'"-a 80"\'/)
    }
  end

  context 'with name => squeezelite' do
    let(:params) { {:player_name => 'squeezelite' } }

    it { should contain_augeas('squeezelite.cfg')
      .with_context('/files/etc/default/squeezelite')
      .with_changes(/set SL_NAME "squeezelite"/)
      .with_changes(/set SB_EXTRA_ARGS \'"-a 80"\'/)
    }
  end
end
