class FixCriticConsensusColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :shows, :critic_consensus
    add_column :shows, :critic_consensus, :text
  end
end
