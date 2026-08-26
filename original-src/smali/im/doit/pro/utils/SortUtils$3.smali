.class Lim/doit/pro/utils/SortUtils$3;
.super Ljava/lang/Object;
.source "SortUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/utils/SortUtils;->sortContacts(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lim/doit/pro/model/Contact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lim/doit/pro/model/Contact;Lim/doit/pro/model/Contact;)I
    .locals 6
    .param p1, "contact1"    # Lim/doit/pro/model/Contact;
    .param p2, "contact2"    # Lim/doit/pro/model/Contact;

    .prologue
    .line 92
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getPos()J

    move-result-wide v2

    invoke-virtual {p2}, Lim/doit/pro/model/Contact;->getPos()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lim/doit/pro/utils/SortUtils;->comparePosAsc(JJ)I

    move-result v0

    .line 93
    .local v0, "diff":I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p2}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p2}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 98
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p2}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p2}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 103
    :cond_1
    if-nez v0, :cond_2

    .line 104
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getCreated()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p2}, Lim/doit/pro/model/Contact;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    .line 105
    const/4 v3, 0x0

    .line 104
    invoke-static {v1, v2, v3}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    .line 107
    :cond_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Contact;

    check-cast p2, Lim/doit/pro/model/Contact;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/utils/SortUtils$3;->compare(Lim/doit/pro/model/Contact;Lim/doit/pro/model/Contact;)I

    move-result v0

    return v0
.end method
