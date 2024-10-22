IF (MKL_FOUND AND PYMESH_USE_MKL AND NOT TARGET PyMesh::MKL)
    ADD_LIBRARY(PyMesh::MKL INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::MKL SYSTEM
        INTERFACE ${MKL_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::MKL
        INTERFACE ${MKL_LIBRARIES})
    TARGET_COMPILE_DEFINITIONS(PyMesh::MKL
        INTERFACE -DEIGEN_USE_MKL_ALL)
ELSE (MKL_FOUND AND PYMESH_USE_MKL AND NOT TARGET PyMesh::MKL)
    ADD_LIBRARY(PyMesh::MKL INTERFACE IMPORTED)
ENDIF (MKL_FOUND AND PYMESH_USE_MKL AND NOT TARGET PyMesh::MKL)


IF (EIGEN_FOUND AND NOT TARGET PyMesh::Eigen)
    ADD_LIBRARY(PyMesh::Eigen INTERFACE IMPORTED)
    TARGET_LINK_LIBRARIES(PyMesh::Eigen
        INTERFACE PyMesh::MKL)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Eigen SYSTEM
        INTERFACE ${EIGEN_INCLUDE_DIRS} ${EIGEN_INCLUDE_DIRS}/unsupported)
    TARGET_COMPILE_DEFINITIONS(PyMesh::Eigen
        INTERFACE -DEIGEN_YES_I_KNOW_SPARSE_MODULE_IS_NOT_STABLE_YET)
ENDIF (EIGEN_FOUND AND NOT TARGET PyMesh::Eigen)


IF (GMP_FOUND AND NOT TARGET PyMesh::GMP)
    ADD_LIBRARY(PyMesh::GMP INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::GMP SYSTEM
        INTERFACE ${GMP_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::GMP
        INTERFACE ${GMP_LIBRARIES})
ELSE (GMP_FOUND AND NOT TARGET PyMesh::GMP)
    ADD_LIBRARY(PyMesh::GMP INTERFACE IMPORTED)
ENDIF (GMP_FOUND AND NOT TARGET PyMesh::GMP)


IF (MPFR_FOUND AND NOT TARGET PyMesh::MPFR)
    ADD_LIBRARY(PyMesh::MPFR INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::MPFR SYSTEM
        INTERFACE ${MPFR_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::MPFR
        INTERFACE ${MPFR_LIBRARIES})
ELSE (MPFR_FOUND AND NOT TARGET PyMesh::MPFR)
    ADD_LIBRARY(PyMesh::MPFR INTERFACE IMPORTED)
ENDIF (MPFR_FOUND AND NOT TARGET PyMesh::MPFR)


IF (TBB_FOUND AND NOT TARGET PyMesh::TBB)
    ADD_LIBRARY(PyMesh::TBB INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::TBB SYSTEM
        INTERFACE ${TBB_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::TBB
        INTERFACE ${TBB_LIBRARIES})
ELSE (TBB_FOUND AND NOT TARGET PyMesh::TBB)
    ADD_LIBRARY(PyMesh::TBB INTERFACE IMPORTED)
ENDIF (TBB_FOUND AND NOT TARGET PyMesh::TBB)


IF (OPENCL_FOUND AND NOT TARGET PyMesh::OpenCL)
    ADD_LIBRARY(PyMesh::OpenCL INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::OpenCL SYSTEM
        INTERFACE ${OPENCL_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::OpenCL
        INTERFACE ${OPENCL_LIBRARIES})
ELSE (OPENCL_FOUND AND NOT TARGET PyMesh::OpenCL)
    ADD_LIBRARY(PyMesh::OpenCL INTERFACE IMPORTED)
ENDIF (OPENCL_FOUND AND NOT TARGET PyMesh::OpenCL)


IF (SPARSEHASH_FOUND AND PYMESH_USE_SPARSEHASH AND NOT TARGET PyMesh::SparseHash)
    ADD_LIBRARY(PyMesh::SparseHash INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::SparseHash SYSTEM
        INTERFACE ${SPARSEHASH_INCLUDE_DIRS})
    TARGET_COMPILE_DEFINITIONS(PyMesh::SparseHash
        INTERFACE -DUSE_SPARSEHASH)
ELSE (SPARSEHASH_FOUND AND PYMESH_USE_SPARSEHASH AND NOT TARGET PyMesh::SparseHash)
    ADD_LIBRARY(PyMesh::SparseHash INTERFACE IMPORTED)
ENDIF (SPARSEHASH_FOUND AND PYMESH_USE_SPARSEHASH AND NOT TARGET PyMesh::SparseHash)


IF (BSP_FOUND AND PYMESH_USE_BSP AND NOT TARGET PyMesh::BSP)
    ADD_LIBRARY(PyMesh::BSP INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::BSP SYSTEM
        INTERFACE ${BSP_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::BSP
        INTERFACE ${BSP_LIBRARIES})
    TARGET_COMPILE_DEFINITIONS(PyMesh::BSP
        INTERFACE -DWITH_BSP)
ELSE (BSP_FOUND AND PYMESH_USE_BSP AND NOT TARGET PyMesh::BSP)
    ADD_LIBRARY(PyMesh::BSP INTERFACE IMPORTED)
ENDIF (BSP_FOUND AND PYMESH_USE_BSP AND NOT TARGET PyMesh::BSP)


IF (MMG_FOUND AND PYMESH_USE_MMG AND NOT TARGET PyMesh::MMG)
    ADD_LIBRARY(PyMesh::MMG INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::MMG SYSTEM
        INTERFACE ${MMG_INCLUDE_DIR})
    TARGET_LINK_LIBRARIES(PyMesh::MMG
        INTERFACE ${MMG_LIBRARY})
    TARGET_COMPILE_DEFINITIONS(PyMesh::MMG
        INTERFACE -DWITH_MMG)
ELSE (MMG_FOUND AND PYMESH_USE_MMG AND NOT TARGET PyMesh::MMG)
    ADD_LIBRARY(PyMesh::MMG INTERFACE IMPORTED)
ENDIF (MMG_FOUND AND PYMESH_USE_MMG AND NOT TARGET PyMesh::MMG)


IF (QHULL_FOUND AND PYMESH_USE_QHULL AND NOT TARGET PyMesh::Qhull)
    ADD_LIBRARY(PyMesh::Qhull INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Qhull SYSTEM
        INTERFACE ${QHULL_INCLUDE_DIRS} ${QHULL_INCLUDE_DIRS}/libqhull)
    TARGET_LINK_LIBRARIES(PyMesh::Qhull
        INTERFACE ${QHULL_LIBRARIES})
    TARGET_COMPILE_DEFINITIONS(PyMesh::Qhull
        INTERFACE -DWITH_QHULL)
ELSE (QHULL_FOUND AND PYMESH_USE_QHULL AND NOT TARGET PyMesh::Qhull)
    ADD_LIBRARY(PyMesh::Qhull INTERFACE IMPORTED)
ENDIF (QHULL_FOUND AND PYMESH_USE_QHULL AND NOT TARGET PyMesh::Qhull)


IF (QUARTET_FOUND AND PYMESH_USE_QUARTET AND NOT TARGET PyMesh::Quartet)
    ADD_LIBRARY(PyMesh::Quartet INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Quartet SYSTEM
        INTERFACE ${QUARTET_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::Quartet
        INTERFACE ${QUARTET_LIBRARIES})
    TARGET_COMPILE_DEFINITIONS(PyMesh::Quartet
        INTERFACE -DWITH_QUARTET)
ELSE (QUARTET_FOUND AND PYMESH_USE_QUARTET AND NOT TARGET PyMesh::Quartet)
    ADD_LIBRARY(PyMesh::Quartet INTERFACE IMPORTED)
ENDIF (QUARTET_FOUND AND PYMESH_USE_QUARTET AND NOT TARGET PyMesh::Quartet)


IF (TRIANGLE_FOUND AND PYMESH_USE_TRIANGLE AND NOT TARGET PyMesh::Triangle)
    ADD_LIBRARY(PyMesh::Triangle INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Triangle SYSTEM
        INTERFACE ${TRIANGLE_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::Triangle
        INTERFACE ${TRIANGLE_LIBRARIES})
    TARGET_COMPILE_DEFINITIONS(PyMesh::Triangle
        INTERFACE -DWITH_TRIANGLE)
ELSE (TRIANGLE_FOUND AND PYMESH_USE_TRIANGLE AND NOT TARGET PyMesh::Triangle)
    ADD_LIBRARY(PyMesh::Triangle INTERFACE IMPORTED)
ENDIF (TRIANGLE_FOUND AND PYMESH_USE_TRIANGLE AND NOT TARGET PyMesh::Triangle)


IF (TETGEN_FOUND AND PYMESH_USE_TETGEN AND NOT PyMesh::TetGen)
    ADD_LIBRARY(PyMesh::TetGen INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::TetGen SYSTEM
        INTERFACE ${TETGEN_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::TetGen
        INTERFACE ${TETGEN_LIBRARIES})
    TARGET_COMPILE_DEFINITIONS(PyMesh::TetGen
        INTERFACE -DTETLIBRARY -DWITH_TETGEN)
ELSE (TETGEN_FOUND AND PYMESH_USE_TETGEN AND NOT PyMesh::TetGen)
    ADD_LIBRARY(PyMesh::TetGen INTERFACE IMPORTED)
ENDIF (TETGEN_FOUND AND PYMESH_USE_TETGEN AND NOT PyMesh::TetGen)


IF (CORK_FOUND AND PYMESH_USE_CORK AND NOT TARGET PyMesh::Cork)
    ADD_LIBRARY(PyMesh::Cork INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Cork SYSTEM
        INTERFACE ${CORK_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::Cork
        INTERFACE ${CORK_LIBRARIES} PyMesh::GMP)
    TARGET_COMPILE_DEFINITIONS(PyMesh::Cork
        INTERFACE -DWITH_CORK)
ELSE (CORK_FOUND AND PYMESH_USE_CORK AND NOT TARGET PyMesh::Cork)
    ADD_LIBRARY(PyMesh::Cork INTERFACE IMPORTED)
ENDIF (CORK_FOUND AND PYMESH_USE_CORK AND NOT TARGET PyMesh::Cork)


IF (CLIPPER_FOUND AND PYMESH_USE_CLIPPER AND NOT TARGET PyMesh::Clipper)
    ADD_LIBRARY(PyMesh::Clipper INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Clipper SYSTEM
        INTERFACE ${CLIPPER_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::Clipper
        INTERFACE ${CLIPPER_LIBRARIES})
    TARGET_COMPILE_DEFINITIONS(PyMesh::Clipper
        INTERFACE -DWITH_CLIPPER)
ELSE (CLIPPER_FOUND AND PYMESH_USE_CLIPPER AND NOT TARGET PyMesh::Clipper)
    ADD_LIBRARY(PyMesh::Clipper INTERFACE IMPORTED)
ENDIF (CLIPPER_FOUND AND PYMESH_USE_CLIPPER AND NOT TARGET PyMesh::Clipper)


IF (CGAL_FOUND AND PYMESH_USE_CGAL AND NOT TARGET PyMesh::CGAL)
    ADD_LIBRARY(PyMesh::CGAL INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::CGAL SYSTEM
        INTERFACE ${CGAL_INCLUDE_DIRS} ${CGAL_3RD_PARTY_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::CGAL
        INTERFACE
            PyMesh::GMP
            PyMesh::MPFR
            Boost::atomic
            Boost::chrono
            Boost::date_time
            Boost::thread
            Boost::system
            ${CGAL_LIBRARIES}
            ${CGAL_3RD_PARTY_LIBRARIES}
    )
    TARGET_COMPILE_DEFINITIONS(PyMesh::CGAL
        INTERFACE
            ${CGAL_DEFINITIONS}
            ${CGAL_3RD_PARTY_DEFINITIONS}
            -DWITH_CGAL
            -DWITH_CGAL_COREFINEMENT
    )
    IF (CGAL_HEADER_ONLY)
        # It seems CGAL does not capture this flag in ${CGAL_DEFINITIONS}...
        TARGET_COMPILE_DEFINITIONS(PyMesh::CGAL
            INTERFACE -DCGAL_HEADER_ONLY)
    ENDIF (CGAL_HEADER_ONLY)
ELSE (CGAL_FOUND AND PYMESH_USE_CGAL AND NOT TARGET PyMesh::CGAL)
    ADD_LIBRARY(PyMesh::CGAL INTERFACE IMPORTED)
ENDIF (CGAL_FOUND AND PYMESH_USE_CGAL AND NOT TARGET PyMesh::CGAL)


IF (LIBIGL_FOUND AND PYMESH_USE_LIBIGL AND NOT TARGET PyMesh::libigl)
    ADD_LIBRARY(PyMesh::libigl INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::libigl SYSTEM
        INTERFACE ${LIBIGL_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::libigl
        INTERFACE PyMesh::CGAL)
    TARGET_COMPILE_DEFINITIONS(PyMesh::libigl
        INTERFACE -DWITH_IGL)
    IF (CGAL_FOUND AND PYMESH_USE_CGAL)
        TARGET_COMPILE_DEFINITIONS(PyMesh::libigl
            INTERFACE -DWITH_IGL_AND_CGAL)
    ENDIF (CGAL_FOUND AND PYMESH_USE_CGAL)
ELSE (LIBIGL_FOUND AND PYMESH_USE_LIBIGL AND NOT TARGET PyMesh::libigl)
    ADD_LIBRARY(PyMesh::libigl INTERFACE IMPORTED)
ENDIF (LIBIGL_FOUND AND PYMESH_USE_LIBIGL AND NOT TARGET PyMesh::libigl)


IF (CARVE_FOUND AND PYMESH_USE_CARVE AND NOT TARGET PyMesh::Carve)
    ADD_LIBRARY(PyMesh::Carve INTERFACE IMPORTED)
    TARGET_LINK_LIBRARIES(PyMesh::Carve
        INTERFACE ${CARVE_LIBRARIES})
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Carve SYSTEM
        INTERFACE ${CARVE_INCLUDE_DIRS})
    TARGET_COMPILE_DEFINITIONS(PyMesh::Carve
        INTERFACE -DWITH_CARVE)
ELSE (CARVE_FOUND AND PYMESH_USE_CARVE AND NOT TARGET PyMesh::Carve)
    ADD_LIBRARY(PyMesh::Carve INTERFACE IMPORTED)
ENDIF (CARVE_FOUND AND PYMESH_USE_CARVE AND NOT TARGET PyMesh::Carve)


IF (UMFPACK_FOUND AND PYMESH_USE_UMFPACK AND NOT TARGET PyMesh::Umfpack)
    ADD_LIBRARY(PyMesh::Umfpack INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Umfpack SYSTEM
        INTERFACE ${UMFPACK_INCLUDES})
    TARGET_LINK_LIBRARIES(PyMesh::Umfpack
        INTERFACE ${UMFPACK_LIBRARIES} ${AMD_LIBRARY} ${COLAMD_LIBRARY})
ELSE (UMFPACK_FOUND AND PYMESH_USE_UMFPACK AND NOT TARGET PyMesh::Umfpack)
    ADD_LIBRARY(PyMesh::Umfpack INTERFACE IMPORTED)
ENDIF (UMFPACK_FOUND AND PYMESH_USE_UMFPACK AND NOT TARGET PyMesh::Umfpack)


IF (CHOLMOD_FOUND AND PYMESH_USE_CHOLMOD AND NOT TARGET PyMesh::Cholmod)
    ADD_LIBRARY(PyMesh::Cholmod INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Cholmod
        INTERFACE ${CHOLMOD_INCLUDES})
    TARGET_LINK_LIBRARIES(PyMesh::Cholmod
        INTERFACE ${CHOLMOD_LIBRARIES} ${AMD_LIBRARY} ${COLAMD_LIBRARY})
ELSE (CHOLMOD_FOUND AND PYMESH_USE_CHOLMOD AND NOT TARGET PyMesh::Cholmod)
    ADD_LIBRARY(PyMesh::Cholmod INTERFACE IMPORTED)
ENDIF (CHOLMOD_FOUND AND PYMESH_USE_CHOLMOD AND NOT TARGET PyMesh::Cholmod)


IF (METIS_FOUND AND PYMESH_USE_METIS AND NOT TARGET PyMesh::Metis)
    ADD_LIBRARY(PyMesh::Metis INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Metis SYSTEM
        INTERFACE ${METIS_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::Metis
        INTERFACE ${METIS_LIBRARIES})
ELSE (METIS_FOUND AND PYMESH_USE_METIS AND NOT TARGET PyMesh::Metis)
    ADD_LIBRARY(PyMesh::Metis INTERFACE IMPORTED)
ENDIF (METIS_FOUND AND PYMESH_USE_METIS AND NOT TARGET PyMesh::Metis)


IF (TINYXML2_FOUND AND PYMESH_USE_TINYXML2 AND NOT TARGET PyMesh::TinyXML2)
    ADD_LIBRARY(PyMesh::TinyXML2 INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::TinyXML2 SYSTEM
        INTERFACE ${TINYXML2_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::TinyXML2
        INTERFACE ${TINYXML2_LIBRARIES})
    TARGET_COMPILE_DEFINITIONS(PyMesh::TinyXML2
        INTERFACE -DWITH_TINYXML2)
ELSE (TINYXML2_FOUND AND PYMESH_USE_TINYXML2 AND NOT TARGET PyMesh::TinyXML2)
    ADD_LIBRARY(PyMesh::TinyXML2 INTERFACE IMPORTED)
ENDIF (TINYXML2_FOUND AND PYMESH_USE_TINYXML2 AND NOT TARGET PyMesh::TinyXML2)


IF (GEOGRAM_FOUND AND PYMESH_USE_GEOGRAM AND NOT TARGET PyMesh::Geogram)
    ADD_LIBRARY(PyMesh::Geogram INTERFACE IMPORTED)
    TARGET_LINK_LIBRARIES(PyMesh::Geogram
        INTERFACE Geogram::geogram)
    TARGET_COMPILE_DEFINITIONS(PyMesh::Geogram
        INTERFACE -DWITH_GEOGRAM)
ELSE (GEOGRAM_FOUND AND PYMESH_USE_GEOGRAM AND NOT TARGET PyMesh::Geogram)
    ADD_LIBRARY(PyMesh::Geogram INTERFACE IMPORTED)
ENDIF (GEOGRAM_FOUND AND PYMESH_USE_GEOGRAM AND NOT TARGET PyMesh::Geogram)


IF (draco_FOUND AND PYMESH_USE_DRACO AND NOT TARGET PyMesh::Draco)
    ADD_LIBRARY(PyMesh::Draco INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Draco SYSTEM
        INTERFACE ${draco_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::Draco
        INTERFACE ${draco_LIBRARIES})
    TARGET_COMPILE_DEFINITIONS(PyMesh::Draco
        INTERFACE -DWITH_DRACO)
ELSE (draco_FOUND AND PYMESH_USE_DRACO AND NOT TARGET PyMesh::Draco)
    ADD_LIBRARY(PyMesh::Draco INTERFACE IMPORTED)
ENDIF (draco_FOUND AND PYMESH_USE_DRACO AND NOT TARGET PyMesh::Draco)


IF (TETWILD_FOUND AND PYMESH_USE_TETWILD AND NOT TARGET PyMesh::TetWild)
    ADD_LIBRARY(PyMesh::TetWild INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::TetWild SYSTEM
        INTERFACE ${TETWILD_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::TetWild
        INTERFACE
            ${TETWILD_LIBRARY}
            PyMesh::CGAL
            PyMesh::libigl
            PyMesh::Geogram
    )
    TARGET_COMPILE_DEFINITIONS(PyMesh::TetWild
        INTERFACE -DWITH_TETWILD)
ELSE (TETWILD_FOUND AND PYMESH_USE_TETWILD AND NOT TARGET PyMesh::TetWild)
    ADD_LIBRARY(PyMesh::TetWild INTERFACE IMPORTED)
ENDIF (TETWILD_FOUND AND PYMESH_USE_TETWILD AND NOT TARGET PyMesh::TetWild)


IF (FAST_WINDING_NUMBER_FOUND AND PYMESH_USE_FastWindingNumber AND NOT TARGET
        PyMesh::FastWindingNumber)
    ADD_LIBRARY(PyMesh::FastWindingNumber INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::FastWindingNumber SYSTEM
        INTERFACE
            ${FAST_WINDING_NUMBER_INCLUDE_DIRS}
    )
    TARGET_LINK_LIBRARIES(PyMesh::FastWindingNumber
        INTERFACE
            ${FAST_WINDING_NUMBER_LIBRARIES}
            PyMesh::TBB
    )
    TARGET_COMPILE_DEFINITIONS(PyMesh::FastWindingNumber
        INTERFACE -DWITH_FAST_WINDING_NUMBER)
ELSE (FAST_WINDING_NUMBER_FOUND AND PYMESH_USE_FastWindingNumber AND NOT TARGET
        PyMesh::FastWindingNumber)
    ADD_LIBRARY(PyMesh::FastWindingNumber INTERFACE IMPORTED)
ENDIF (FAST_WINDING_NUMBER_FOUND AND PYMESH_USE_FastWindingNumber AND NOT TARGET
    PyMesh::FastWindingNumber)

IF (JIGSAW_FOUND)
    ADD_LIBRARY(PyMesh::Jigsaw INTERFACE IMPORTED)
    TARGET_INCLUDE_DIRECTORIES(PyMesh::Jigsaw SYSTEM
        INTERFACE ${JIGSAW_INCLUDE_DIRS})
    TARGET_LINK_LIBRARIES(PyMesh::Jigsaw
        INTERFACE ${JIGSAW_LIBRARIES})
    TARGET_COMPILE_DEFINITIONS(PyMesh::Jigsaw
        INTERFACE -DWITH_JIGSAW)
ELSE (JIGSAW_FOUND)
    ADD_LIBRARY(PyMesh::Jigsaw INTERFACE IMPORTED)
ENDIF (JIGSAW_FOUND)
