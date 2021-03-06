defmodule Nimex.Genesis.Testnet do
  alias Nimex.Genesis

  @genesis_accounts """
    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
    tt8=
    """
  def all_accounts do
    data = @genesis_accounts
    |> String.replace("\n", "")
    |> Base.decode64!

    << _num_accounts::size(16), data::binary >> = data
    Genesis.parse_accounts(data)
  end
end