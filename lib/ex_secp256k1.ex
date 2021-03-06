defmodule ExSecp256k1 do
  use Rustler, otp_app: :ex_secp256k1, crate: "exsecp256k1"

  def sign(_message, _private_key), do: :erlang.nif_error(:nif_not_loaded)

  def sign_compact(_message, _private_key), do: :erlang.nif_error(:nif_not_loaded)

  def recover(_hash, _r, _s, _recovery_id), do: :erlang.nif_error(:nif_not_loaded)

  def recover_compact(_hash, _signature, _recovery_id), do: :erlang.nif_error(:nif_not_loaded)

  def create_public_key(_private_key), do: :erlang.nif_error(:nif_not_loaded)
end
