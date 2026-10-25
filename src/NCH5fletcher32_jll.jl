# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule NCH5fletcher32_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("NCH5fletcher32")
JLLWrappers.@generate_main_file("NCH5fletcher32", Base.UUID("9752a387-9645-5296-a442-06d00e068e94"))
end  # module NCH5fletcher32_jll
