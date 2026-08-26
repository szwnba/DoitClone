.class public Lim/doit/pro/db/persist/utils/SQLBuilder;
.super Ljava/lang/Object;
.source "SQLBuilder.java"


# static fields
.field public static final AND:Ljava/lang/String; = " AND "

.field public static final EQ:Ljava/lang/String; = "="

.field public static final GT:Ljava/lang/String; = ">"

.field public static final GTE:Ljava/lang/String; = ">="

.field public static final IN:Ljava/lang/String; = " in"

.field public static final LEFT_PARENTHESIS:Ljava/lang/String; = "("

.field public static final LIKE:Ljava/lang/String; = " LIKE "

.field public static final LOWER:Ljava/lang/String; = "LOWER"

.field public static final LT:Ljava/lang/String; = "<"

.field public static final LTE:Ljava/lang/String; = "<="

.field public static final NEQ:Ljava/lang/String; = "!="

.field public static final NIN:Ljava/lang/String; = " not in"

.field public static final NOT_NULL:Ljava/lang/String; = " IS NOT NULL "

.field public static final NULL:Ljava/lang/String; = " IS NULL "

.field public static final OR:Ljava/lang/String; = " OR "

.field public static final PERCENSIGN:Ljava/lang/String; = "%"

.field public static final RIGHT_PARENTHESIS:Ljava/lang/String; = ")"

.field public static final SINGLE_QUOTES:Ljava/lang/String; = "\'"


# instance fields
.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    .line 32
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    return-void
.end method


# virtual methods
.method public and(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    .line 51
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->done()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 52
    return-object p0
.end method

.method public and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    return-object p0
.end method

.method public append(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "sql"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    .line 41
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->done()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 42
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    return-object p0
.end method

.method public done()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    return-object p0
.end method

.method public eq(J)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    return-object p0
.end method

.method public eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    return-object p0
.end method

.method public eqWithArgs(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    return-object p0
.end method

.method public gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    return-object p0
.end method

.method public gt(J)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 131
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    return-object p0
.end method

.method public gt(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    return-object p0
.end method

.method public gte(I)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    return-object p0
.end method

.method public gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 146
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    return-object p0
.end method

.method public gte(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    return-object p0
.end method

.method public in(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, " in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    return-object p0
.end method

.method public isNotNull()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, " IS NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    return-object p0
.end method

.method public isNotNull(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    return-object p0
.end method

.method public isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, " IS NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-object p0
.end method

.method public isNull(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    return-object p0
.end method

.method public like(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "LOWER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    return-object p0
.end method

.method public like(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "LOWER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    return-object p0
.end method

.method public lt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    return-object p0
.end method

.method public lt(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    return-object p0
.end method

.method public lte(I)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    return-object p0
.end method

.method public lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 171
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    return-object p0
.end method

.method public lte(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    return-object p0
.end method

.method public neq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "!="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    return-object p0
.end method

.method public nin(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, " not in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    return-object p0
.end method

.method public or(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    .line 91
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->done()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 92
    return-object p0
.end method

.method public or(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lim/doit/pro/db/persist/utils/SQLBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
