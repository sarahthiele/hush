inputs = ["src/scripts/pipeline.py"]
for i in range(15):
    inputs.extend(
        [
            f"src/data/cosmic_dat/fiducial_10_10_{i}.h5",
            f"src/data/cosmic_dat/fiducial_11_10_{i}.h5",
            f"src/data/cosmic_dat/fiducial_11_11_{i}.h5",
            f"src/data/cosmic_dat/fiducial_12_10_12_{i}.h5",
            f"src/data/cosmic_dat/q3_10_10_{i}.h5",
            f"src/data/cosmic_dat/q3_11_10_{i}.h5",
            f"src/data/cosmic_dat/q3_11_11_{i}.h5",
            f"src/data/cosmic_dat/q3_12_10_12_{i}.h5",
            f"src/data/cosmic_dat/alpha25_10_10_{i}.h5",
            f"src/data/cosmic_dat/alpha25_11_10_{i}.h5",
            f"src/data/cosmic_dat/alpha25_11_11_{i}.h5",
            f"src/data/cosmic_dat/alpha25_12_10_12_{i}.h5",
            f"src/data/cosmic_dat/alpha5_10_10_{i}.h5",
            f"src/data/cosmic_dat/alpha5_11_10_{i}.h5",
            f"src/data/cosmic_dat/alpha5_11_11_{i}.h5",
            f"src/data/cosmic_dat/alpha5_12_10_12_{i}.h5",
            f"src/data/cosmic_dat/fiducial_Z_10_10_{i}.h5",
            f"src/data/cosmic_dat/fiducial_Z_11_10_{i}.h5",
            f"src/data/cosmic_dat/fiducial_Z_11_11_{i}.h5",
            f"src/data/cosmic_dat/fiducial_Z_12_10_12_{i}.h5",
            f"src/data/cosmic_dat/q3_Z_10_10_{i}.h5",
            f"src/data/cosmic_dat/q3_Z_11_10_{i}.h5",
            f"src/data/cosmic_dat/q3_Z_11_11_{i}.h5",
            f"src/data/cosmic_dat/q3_Z_12_10_12_{i}.h5",
            f"src/data/cosmic_dat/alpha25_Z_10_10_{i}.h5",
            f"src/data/cosmic_dat/alpha25_Z_11_10_{i}.h5",
            f"src/data/cosmic_dat/alpha25_Z_11_11_{i}.h5",
            f"src/data/cosmic_dat/alpha25_Z_12_10_12_{i}.h5",
            f"src/data/cosmic_dat/alpha5_Z_10_10_{i}.h5",
            f"src/data/cosmic_dat/alpha5_Z_11_10_{i}.h5",
            f"src/data/cosmic_dat/alpha5_Z_11_11_{i}.h5",
            f"src/data/cosmic_dat/alpha5_Z_12_10_12_{i}.h5",
        ]
    )

rule results:
    input:
        inputs
    cache:
        True
    output:
        "src/data/results.hdf"
    script:
        "src/scripts/pipeline.py" 