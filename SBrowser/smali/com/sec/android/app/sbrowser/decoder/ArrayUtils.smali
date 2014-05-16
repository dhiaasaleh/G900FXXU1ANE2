.class public Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z = null

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean; = null

.field public static final EMPTY_BYTE_ARRAY:[B = null

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte; = null

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character; = null

.field public static final EMPTY_CHAR_ARRAY:[C = null

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D = null

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double; = null

.field public static final EMPTY_FLOAT_ARRAY:[F = null

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float; = null

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer; = null

.field public static final EMPTY_INT_ARRAY:[I = null

.field public static final EMPTY_LONG_ARRAY:[J = null

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long; = null

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object; = null

.field public static final EMPTY_SHORT_ARRAY:[S = null

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short; = null

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v1, [J

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    new-array v0, v1, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_INT_ARRAY:[I

    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    new-array v0, v1, [S

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    new-array v0, v1, [B

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    new-array v0, v1, [D

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    new-array v0, v1, [Z

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    new-array v0, v1, [C

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Length: 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gt p1, v1, :cond_2

    if-gez p1, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    if-ge p1, v1, :cond_4

    add-int/lit8 v3, p1, 0x1

    sub-int v4, v1, p1

    invoke-static {p0, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method public static add([BB)[B
    .locals 2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public static add([BIB)[B
    .locals 2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .locals 2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    move-object v0, v1

    check-cast v0, [C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    return-object v0
.end method

.method public static add([CIC)[C
    .locals 2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .locals 2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    move-object v0, v1

    check-cast v0, [D

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    return-object v0
.end method

.method public static add([DID)[D
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .locals 2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    move-object v0, v1

    check-cast v0, [F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-object v0
.end method

.method public static add([FIF)[F
    .locals 2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .locals 2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-object v0
.end method

.method public static add([III)[I
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .locals 2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    move-object v0, v1

    check-cast v0, [J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array and element cannot both be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v0, v2

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Arguments cannot both be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add([SIS)[S
    .locals 2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .locals 2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    move-object v0, v1

    check-cast v0, [S

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    return-object v0
.end method

.method public static add([ZIZ)[Z
    .locals 2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .locals 2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    move-object v0, v1

    check-cast v0, [Z

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([C[C)[C
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([C)[C

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([C)[C

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [C

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([D[D)[D
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([D)[D

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([D)[D

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [D

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([F[F)[F
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([F)[F

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([F)[F

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [F

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([I[I)[I
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([J[J)[J
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([J)[J

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([J)[J

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [J

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    array-length v4, p0

    array-length v5, p1

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    array-length v4, p0

    invoke-static {p0, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    :try_start_0
    array-length v5, p0

    array-length v6, p1

    invoke-static {p1, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot store "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in an array of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_2
    throw v0
.end method

.method public static varargs addAll([S[S)[S
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([S)[S

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([S)[S

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [S

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Z[Z)[Z
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Z

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([B)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public static clone([C)[C
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public static clone([D)[D
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public static clone([F)[F
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public static clone([J)[J
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clone([S)[S
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_0
.end method

.method public static clone([Z)[Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0
.end method

.method public static contains([BB)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([CC)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DD)Z
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DDD)Z
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static contains([FF)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([JJ)Z
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([SS)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([ZZ)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractIndices(Ljava/util/HashSet;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v4, v5, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/HashCodeBuilder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/HashCodeBuilder;->append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-byte v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([CC)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-char v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([DD)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .locals 4

    const/4 v1, -0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    :cond_2
    move v0, p3

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([DDID)I
    .locals 8

    const/4 v5, -0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([D)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    :cond_2
    sub-double v3, p1, p4

    add-double v1, p1, p4

    move v0, p3

    :goto_1
    array-length v6, p0

    if-ge v0, v6, :cond_4

    aget-wide v6, p0, v0

    cmpl-double v6, v6, v3

    if-ltz v6, :cond_3

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v1

    if-lez v6, :cond_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_0
.end method

.method public static indexOf([FF)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .locals 3

    const/4 v1, -0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([II)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([JJ)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .locals 4

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    :cond_2
    move v0, p3

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-wide v2, p0, v0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    if-nez p1, :cond_3

    move v0, p2

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, p2

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_4

    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([SS)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-short v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([ZZ)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .locals 3

    const/4 v1, -0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-boolean v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([B)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([C)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([D)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([F)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([S)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Z)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/EqualsBuilder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/decoder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([C)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([D)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([F)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([I)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([J)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([S)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Z)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([B[B)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([C[C)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([D[D)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([F[F)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([I[I)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([J[J)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([S[S)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Z[Z)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BB)I
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    :goto_1
    if-ltz v0, :cond_4

    aget-byte v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([CC)I
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    :goto_1
    if-ltz v0, :cond_4

    aget-char v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([DD)I
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .locals 6

    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .locals 4

    const/4 v1, -0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p3, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p3, v2, -0x1

    :cond_3
    move v0, p3

    :goto_1
    if-ltz v0, :cond_4

    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([DDID)I
    .locals 8

    const/4 v5, -0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([D)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    array-length v6, p0

    if-lt p3, v6, :cond_3

    array-length v6, p0

    add-int/lit8 p3, v6, -0x1

    :cond_3
    sub-double v3, p1, p4

    add-double v1, p1, p4

    move v0, p3

    :goto_1
    if-ltz v0, :cond_5

    aget-wide v6, p0, v0

    cmpl-double v6, v6, v3

    if-ltz v6, :cond_4

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v1

    if-lez v6, :cond_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_0
.end method

.method public static lastIndexOf([FF)I
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .locals 3

    const/4 v1, -0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    :goto_1
    if-ltz v0, :cond_4

    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([II)I
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    :goto_1
    if-ltz v0, :cond_4

    aget v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([JJ)I
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .locals 4

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p3, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p3, v2, -0x1

    :cond_3
    move v0, p3

    :goto_1
    if-ltz v0, :cond_4

    aget-wide v2, p0, v0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    if-nez p1, :cond_4

    move v0, p2

    :goto_1
    if-ltz v0, :cond_5

    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, p2

    :goto_2
    if-ltz v0, :cond_5

    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([SS)I
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    :goto_1
    if-ltz v0, :cond_4

    aget-short v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .locals 3

    const/4 v1, -0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    :goto_1
    if-ltz v0, :cond_4

    aget-boolean v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static nullToEmpty([B)[B
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([C)[C
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([D)[D
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([F)[F
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([I)[I
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_INT_ARRAY:[I

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([J)[J
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([S)[S
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Z)[Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    :cond_1
    return-object p0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_2

    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v1
.end method

.method public static remove([BI)[B
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method private static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 12

    const/4 v11, 0x0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v6

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isNotEmpty([I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    array-length v4, p1

    move v7, v6

    :cond_0
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    aget v5, p1, v4

    if-ltz v5, :cond_1

    if-lt v5, v6, :cond_2

    :cond_1
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    if-ge v5, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v7, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    sub-int v10, v6, v2

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    if-ge v2, v6, :cond_6

    move v3, v6

    sub-int v1, v6, v2

    array-length v9, p1

    add-int/lit8 v4, v9, -0x1

    :goto_1
    if-ltz v4, :cond_5

    aget v5, p1, v4

    sub-int v9, v3, v5

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    sub-int v9, v3, v5

    add-int/lit8 v0, v9, -0x1

    sub-int/2addr v1, v0

    add-int/lit8 v9, v5, 0x1

    invoke-static {p0, v9, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move v3, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    if-lez v3, :cond_6

    invoke-static {p0, v11, v8, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    return-object v8
.end method

.method public static varargs removeAll([B[I)[B
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs removeAll([C[I)[C
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static varargs removeAll([D[I)[D
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static varargs removeAll([F[I)[F
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static varargs removeAll([I[I)[I
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static varargs removeAll([J[I)[J
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs removeAll([S[I)[S
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static varargs removeAll([Z[I)[Z
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([B)[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove([BI)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([CC)[C
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([C)[C

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove([CI)[C

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([DD)[D
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([D)[D

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove([DI)[D

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([FF)[F
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([F)[F

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove([FI)[F

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([II)[I
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove([II)[I

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([JJ)[J
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([J)[J

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove([JI)[J

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([SS)[S
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([S)[S

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove([SI)[S

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([ZZ)[Z
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->remove([ZI)[Z

    move-result-object v1

    goto :goto_0
.end method

.method public static varargs removeElements([B[B)[B
    .locals 16

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([B)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([B)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([B)[B

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v1, p1

    array-length v10, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_3

    aget-byte v13, v1, v9

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    if-nez v3, :cond_2

    new-instance v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->increment()V

    goto :goto_2

    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->intValue()I

    move-result v4

    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([BBI)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    goto :goto_3

    :cond_5
    invoke-static {v12}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll([B[I)[B

    move-result-object v14

    goto :goto_0
.end method

.method public static varargs removeElements([C[C)[C
    .locals 16

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([C)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([C)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([C)[C

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v1, p1

    array-length v10, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_3

    aget-char v13, v1, v9

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    if-nez v3, :cond_2

    new-instance v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->increment()V

    goto :goto_2

    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Character;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->intValue()I

    move-result v4

    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Character;->charValue()C

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([CCI)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    goto :goto_3

    :cond_5
    invoke-static {v12}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll([C[I)[C

    move-result-object v14

    goto :goto_0
.end method

.method public static varargs removeElements([D[D)[D
    .locals 19

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([D)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([D)Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([D)[D

    move-result-object v17

    :goto_0
    return-object v17

    :cond_1
    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v3, p1

    array-length v12, v3

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_3

    aget-wide v15, v3, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    if-nez v5, :cond_2

    new-instance v17, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->increment()V

    goto :goto_2

    :cond_3
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Double;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->intValue()I

    move-result v6

    :goto_3
    if-ge v10, v6, :cond_4

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2, v8}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([DDI)I

    move-result v8

    if-ltz v8, :cond_4

    add-int/lit8 v9, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move v8, v9

    goto :goto_3

    :cond_5
    invoke-static {v14}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll([D[I)[D

    move-result-object v17

    goto/16 :goto_0
.end method

.method public static varargs removeElements([F[F)[F
    .locals 16

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([F)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([F)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([F)[F

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v1, p1

    array-length v10, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_3

    aget v13, v1, v9

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    if-nez v3, :cond_2

    new-instance v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->increment()V

    goto :goto_2

    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->intValue()I

    move-result v4

    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([FFI)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    goto :goto_3

    :cond_5
    invoke-static {v12}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll([F[I)[F

    move-result-object v14

    goto :goto_0
.end method

.method public static varargs removeElements([I[I)[I
    .locals 16

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([I)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([I)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([I)[I

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v1, p1

    array-length v10, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_3

    aget v13, v1, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    if-nez v3, :cond_2

    new-instance v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->increment()V

    goto :goto_2

    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->intValue()I

    move-result v4

    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([III)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    goto :goto_3

    :cond_5
    invoke-static {v12}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll([I[I)[I

    move-result-object v14

    goto :goto_0
.end method

.method public static varargs removeElements([J[J)[J
    .locals 19

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([J)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([J)Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([J)[J

    move-result-object v17

    :goto_0
    return-object v17

    :cond_1
    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v3, p1

    array-length v12, v3

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_3

    aget-wide v15, v3, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    if-nez v5, :cond_2

    new-instance v17, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->increment()V

    goto :goto_2

    :cond_3
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->intValue()I

    move-result v6

    :goto_3
    if-ge v10, v6, :cond_4

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2, v8}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([JJI)I

    move-result v8

    if-ltz v8, :cond_4

    add-int/lit8 v9, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move v8, v9

    goto :goto_3

    :cond_5
    invoke-static {v14}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll([J[I)[J

    move-result-object v17

    goto/16 :goto_0
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    :goto_0
    return-object v12

    :cond_1
    new-instance v9, Ljava/util/HashMap;

    array-length v12, p1

    invoke-direct {v9, v12}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, p1

    array-length v8, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v11, v0, v7

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    if-nez v1, :cond_2

    new-instance v12, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;-><init>(I)V

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->increment()V

    goto :goto_2

    :cond_3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->intValue()I

    move-result v2

    :goto_3
    if-ge v6, v2, :cond_4

    invoke-static {p0, v11, v4}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v4

    if-ltz v4, :cond_4

    add-int/lit8 v5, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v4, v5

    goto :goto_3

    :cond_5
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v12

    invoke-static {p0, v12}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v12

    goto :goto_0
.end method

.method public static varargs removeElements([S[S)[S
    .locals 16

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([S)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([S)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([S)[S

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v1, p1

    array-length v10, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_3

    aget-short v13, v1, v9

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    if-nez v3, :cond_2

    new-instance v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->increment()V

    goto :goto_2

    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Short;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->intValue()I

    move-result v4

    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Short;->shortValue()S

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([SSI)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    goto :goto_3

    :cond_5
    invoke-static {v12}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll([S[I)[S

    move-result-object v14

    goto :goto_0
.end method

.method public static varargs removeElements([Z[Z)[Z
    .locals 16

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([Z)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->isEmpty([Z)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([Z)[Z

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v1, p1

    array-length v10, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_3

    aget-boolean v13, v1, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    if-nez v3, :cond_2

    new-instance v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->increment()V

    goto :goto_2

    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/decoder/MutableInt;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/decoder/MutableInt;->intValue()I

    move-result v4

    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->indexOf([ZZI)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    goto :goto_3

    :cond_5
    invoke-static {v12}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->removeAll([Z[I)[Z

    move-result-object v14

    goto :goto_0
.end method

.method public static reverse([B)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-le v1, v0, :cond_0

    aget-byte v2, p0, v1

    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    aput-byte v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([C)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-le v1, v0, :cond_0

    aget-char v2, p0, v1

    aget-char v3, p0, v0

    aput-char v3, p0, v1

    aput-char v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([D)V
    .locals 6

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-le v1, v0, :cond_0

    aget-wide v2, p0, v1

    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    aput-wide v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([F)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-le v1, v0, :cond_0

    aget v2, p0, v1

    aget v3, p0, v0

    aput v3, p0, v1

    aput v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([I)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-le v1, v0, :cond_0

    aget v2, p0, v1

    aget v3, p0, v0

    aput v3, p0, v1

    aput v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([J)V
    .locals 6

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-le v1, v0, :cond_0

    aget-wide v2, p0, v1

    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    aput-wide v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-le v1, v0, :cond_0

    aget-object v2, p0, v1

    aget-object v3, p0, v0

    aput-object v3, p0, v1

    aput-object v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([S)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-le v1, v0, :cond_0

    aget-short v2, p0, v1

    aget-short v3, p0, v0

    aput-short v3, p0, v1

    aput-short v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([Z)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-le v1, v0, :cond_0

    aget-boolean v2, p0, v1

    aget-boolean v3, p0, v0

    aput-boolean v3, p0, v1

    aput-boolean v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static subarray([BII)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    if-gtz v0, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_3
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([CII)[C
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    if-gtz v0, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    :cond_3
    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([DII)[D
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    if-gtz v0, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    :cond_3
    new-array v1, v0, [D

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([FII)[F
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    if-gtz v0, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    :cond_3
    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([III)[I
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    if-gtz v0, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    :cond_3
    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([JII)[J
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    if-gtz v0, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    :cond_3
    new-array v1, v0, [J

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v4, p0

    if-le p2, v4, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v1, p2, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    if-gtz v1, :cond_3

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static subarray([SII)[S
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    if-gtz v0, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    :cond_3
    new-array v1, v0, [S

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([ZII)[Z
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    if-gtz v0, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    :cond_3
    new-array v1, v0, [Z

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v5, p0

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_0

    aget-object v4, p0, v2

    instance-of v5, v4, Ljava/util/Map$Entry;

    if-eqz v5, :cond_2

    move-object v1, v4

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    array-length v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Array element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', has a length less than 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Array element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Boolean;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-boolean v2, p0, v0

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Byte;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Character;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 4

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Double;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Float;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 4

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Short;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-short v2, p0, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 4

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [B

    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [C

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 4

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [C

    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [D

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 5

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [D

    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    if-nez v0, :cond_3

    move-wide v3, p1

    :goto_2
    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [F

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 4

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [F

    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 4

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 5

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [J

    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    if-nez v0, :cond_3

    move-wide v3, p1

    :goto_2
    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [S

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 4

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [S

    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Z

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 4

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [Z

    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "{}"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;->SIMPLE_STYLE:Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/decoder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
