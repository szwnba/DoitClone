.class public Lim/doit/pro/ui/component/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# static fields
.field static sCells:[[Lim/doit/pro/ui/component/LockPatternView$Cell;


# instance fields
.field column:I

.field row:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 134
    filled-new-array {v4, v4}, [I

    move-result-object v2

    const-class v3, Lim/doit/pro/ui/component/LockPatternView$Cell;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lim/doit/pro/ui/component/LockPatternView$Cell;

    sput-object v2, Lim/doit/pro/ui/component/LockPatternView$Cell;->sCells:[[Lim/doit/pro/ui/component/LockPatternView$Cell;

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 141
    return-void

    .line 137
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v4, :cond_1

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    sget-object v2, Lim/doit/pro/ui/component/LockPatternView$Cell;->sCells:[[Lim/doit/pro/ui/component/LockPatternView$Cell;

    aget-object v2, v2, v0

    new-instance v3, Lim/doit/pro/ui/component/LockPatternView$Cell;

    invoke-direct {v3, v0, v1}, Lim/doit/pro/ui/component/LockPatternView$Cell;-><init>(II)V

    aput-object v3, v2, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {p1, p2}, Lim/doit/pro/ui/component/LockPatternView$Cell;->checkRange(II)V

    .line 151
    iput p1, p0, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    .line 152
    iput p2, p0, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    .line 153
    return-void
.end method

.method private static checkRange(II)V
    .locals 2
    .param p0, "row"    # I
    .param p1, "column"    # I

    .prologue
    const/4 v0, 0x2

    .line 175
    if-ltz p0, :cond_0

    if-le p0, v0, :cond_1

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "row must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    .line 179
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 180
    const-string v1, "column must be in range 0-2"

    .line 179
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_3
    return-void
.end method

.method public static declared-synchronized of(II)Lim/doit/pro/ui/component/LockPatternView$Cell;
    .locals 2
    .param p0, "row"    # I
    .param p1, "column"    # I

    .prologue
    .line 170
    const-class v1, Lim/doit/pro/ui/component/LockPatternView$Cell;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lim/doit/pro/ui/component/LockPatternView$Cell;->checkRange(II)V

    .line 171
    sget-object v0, Lim/doit/pro/ui/component/LockPatternView$Cell;->sCells:[[Lim/doit/pro/ui/component/LockPatternView$Cell;

    aget-object v0, v0, p0

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(row="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
