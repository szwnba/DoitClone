.class public Lcom/evernote/edam/notestore/RelatedResult;
.super Ljava/lang/Object;
.source "RelatedResult.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/RelatedResult;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CONTAINING_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private containingNotebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/NotebookDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private notebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation
.end field

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 49
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "RelatedResult"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResult;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 51
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notes"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResult;->NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 52
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notebooks"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResult;->NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 53
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "tags"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResult;->TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 54
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "containingNotebooks"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResult;->CONTAINING_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/RelatedResult;)V
    .locals 7
    .param p1, "other"    # Lcom/evernote/edam/notestore/RelatedResult;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotes()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "__this__notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Note;>;"
    iget-object v6, p1, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evernote/edam/type/Note;

    .line 74
    .local v5, "other_element":Lcom/evernote/edam/type/Note;
    new-instance v6, Lcom/evernote/edam/type/Note;

    invoke-direct {v6, v5}, Lcom/evernote/edam/type/Note;-><init>(Lcom/evernote/edam/type/Note;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    .end local v5    # "other_element":Lcom/evernote/edam/type/Note;
    :cond_0
    iput-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    .line 78
    .end local v2    # "__this__notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Note;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotebooks()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "__this__notebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Notebook;>;"
    iget-object v6, p1, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evernote/edam/type/Notebook;

    .line 81
    .local v5, "other_element":Lcom/evernote/edam/type/Notebook;
    new-instance v6, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v6, v5}, Lcom/evernote/edam/type/Notebook;-><init>(Lcom/evernote/edam/type/Notebook;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v5    # "other_element":Lcom/evernote/edam/type/Notebook;
    :cond_2
    iput-object v1, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    .line 85
    .end local v1    # "__this__notebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Notebook;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetTags()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v3, "__this__tags":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Tag;>;"
    iget-object v6, p1, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evernote/edam/type/Tag;

    .line 88
    .local v5, "other_element":Lcom/evernote/edam/type/Tag;
    new-instance v6, Lcom/evernote/edam/type/Tag;

    invoke-direct {v6, v5}, Lcom/evernote/edam/type/Tag;-><init>(Lcom/evernote/edam/type/Tag;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 90
    .end local v5    # "other_element":Lcom/evernote/edam/type/Tag;
    :cond_4
    iput-object v3, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    .line 92
    .end local v3    # "__this__tags":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Tag;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetContainingNotebooks()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "__this__containingNotebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/NotebookDescriptor;>;"
    iget-object v6, p1, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evernote/edam/type/NotebookDescriptor;

    .line 95
    .local v5, "other_element":Lcom/evernote/edam/type/NotebookDescriptor;
    new-instance v6, Lcom/evernote/edam/type/NotebookDescriptor;

    invoke-direct {v6, v5}, Lcom/evernote/edam/type/NotebookDescriptor;-><init>(Lcom/evernote/edam/type/NotebookDescriptor;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 97
    .end local v5    # "other_element":Lcom/evernote/edam/type/NotebookDescriptor;
    :cond_6
    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    .line 99
    .end local v0    # "__this__containingNotebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/NotebookDescriptor;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method


# virtual methods
.method public addToContainingNotebooks(Lcom/evernote/edam/type/NotebookDescriptor;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/type/NotebookDescriptor;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public addToNotebooks(Lcom/evernote/edam/type/Notebook;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/type/Notebook;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public addToNotes(Lcom/evernote/edam/type/Note;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/type/Note;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public addToTags(Lcom/evernote/edam/type/Tag;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/type/Tag;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    .line 107
    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    .line 108
    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    .line 110
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/RelatedResult;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/RelatedResult;

    .prologue
    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    const/4 v0, 0x0

    .line 327
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 329
    .local v1, "typedOther":Lcom/evernote/edam/notestore/RelatedResult;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 330
    if-nez v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotes()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 334
    if-nez v0, :cond_0

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotebooks()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotebooks()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 339
    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotebooks()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 343
    if-nez v0, :cond_0

    .line 347
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetTags()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetTags()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 348
    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetTags()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 352
    if-nez v0, :cond_0

    .line 356
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetContainingNotebooks()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetContainingNotebooks()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 357
    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetContainingNotebooks()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 361
    if-nez v0, :cond_0

    .line 365
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Lcom/evernote/edam/notestore/RelatedResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedResult;->compareTo(Lcom/evernote/edam/notestore/RelatedResult;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/RelatedResult;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/evernote/edam/notestore/RelatedResult;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/RelatedResult;-><init>(Lcom/evernote/edam/notestore/RelatedResult;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->deepCopy()Lcom/evernote/edam/notestore/RelatedResult;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/RelatedResult;)Z
    .locals 11
    .param p1, "that"    # Lcom/evernote/edam/notestore/RelatedResult;

    .prologue
    const/4 v8, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v8

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotes()Z

    move-result v6

    .line 278
    .local v6, "this_present_notes":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotes()Z

    move-result v2

    .line 279
    .local v2, "that_present_notes":Z
    if-nez v6, :cond_2

    if-eqz v2, :cond_3

    .line 280
    :cond_2
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 282
    iget-object v9, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    iget-object v10, p1, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 286
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotebooks()Z

    move-result v5

    .line 287
    .local v5, "this_present_notebooks":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotebooks()Z

    move-result v1

    .line 288
    .local v1, "that_present_notebooks":Z
    if-nez v5, :cond_4

    if-eqz v1, :cond_5

    .line 289
    :cond_4
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 291
    iget-object v9, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    iget-object v10, p1, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 295
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetTags()Z

    move-result v7

    .line 296
    .local v7, "this_present_tags":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetTags()Z

    move-result v3

    .line 297
    .local v3, "that_present_tags":Z
    if-nez v7, :cond_6

    if-eqz v3, :cond_7

    .line 298
    :cond_6
    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 300
    iget-object v9, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    iget-object v10, p1, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 304
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetContainingNotebooks()Z

    move-result v4

    .line 305
    .local v4, "this_present_containingNotebooks":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResult;->isSetContainingNotebooks()Z

    move-result v0

    .line 306
    .local v0, "that_present_containingNotebooks":Z
    if-nez v4, :cond_8

    if-eqz v0, :cond_9

    .line 307
    :cond_8
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 309
    iget-object v9, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    iget-object v10, p1, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 313
    :cond_9
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 266
    if-nez p1, :cond_1

    .line 270
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 268
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/notestore/RelatedResult;

    if-eqz v1, :cond_0

    .line 269
    check-cast p1, Lcom/evernote/edam/notestore/RelatedResult;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedResult;->equals(Lcom/evernote/edam/notestore/RelatedResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContainingNotebooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/NotebookDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    return-object v0
.end method

.method public getContainingNotebooksIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/evernote/edam/type/NotebookDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getContainingNotebooksSize()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNotebooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    return-object v0
.end method

.method public getNotebooksIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotebooksSize()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    return-object v0
.end method

.method public getNotesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotesSize()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTagsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagsSize()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public isSetContainingNotebooks()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNotebooks()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNotes()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTags()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 16
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 373
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v13

    .line 374
    .local v13, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v14, v13, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v14, :cond_0

    .line 455
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/RelatedResult;->validate()V

    .line 457
    return-void

    .line 377
    :cond_0
    iget-short v14, v13, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v14, :pswitch_data_0

    .line 451
    iget-byte v14, v13, Lcom/evernote/thrift/protocol/TField;->type:B

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 453
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 379
    :pswitch_0
    iget-byte v14, v13, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v15, 0xf

    if-ne v14, v15, :cond_2

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v11

    .line 382
    .local v11, "_list94":Lcom/evernote/thrift/protocol/TList;
    new-instance v14, Ljava/util/ArrayList;

    iget v15, v11, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    .line 383
    const/4 v7, 0x0

    .local v7, "_i95":I
    :goto_2
    iget v14, v11, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v7, v14, :cond_1

    .line 386
    new-instance v3, Lcom/evernote/edam/type/Note;

    invoke-direct {v3}, Lcom/evernote/edam/type/Note;-><init>()V

    .line 387
    .local v3, "_elem96":Lcom/evernote/edam/type/Note;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/evernote/edam/type/Note;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 390
    .end local v3    # "_elem96":Lcom/evernote/edam/type/Note;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 393
    .end local v7    # "_i95":I
    .end local v11    # "_list94":Lcom/evernote/thrift/protocol/TList;
    :cond_2
    iget-byte v14, v13, Lcom/evernote/thrift/protocol/TField;->type:B

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 397
    :pswitch_1
    iget-byte v14, v13, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v15, 0xf

    if-ne v14, v15, :cond_4

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v12

    .line 400
    .local v12, "_list97":Lcom/evernote/thrift/protocol/TList;
    new-instance v14, Ljava/util/ArrayList;

    iget v15, v12, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    .line 401
    const/4 v8, 0x0

    .local v8, "_i98":I
    :goto_3
    iget v14, v12, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v8, v14, :cond_3

    .line 404
    new-instance v4, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v4}, Lcom/evernote/edam/type/Notebook;-><init>()V

    .line 405
    .local v4, "_elem99":Lcom/evernote/edam/type/Notebook;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/evernote/edam/type/Notebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 408
    .end local v4    # "_elem99":Lcom/evernote/edam/type/Notebook;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 411
    .end local v8    # "_i98":I
    .end local v12    # "_list97":Lcom/evernote/thrift/protocol/TList;
    :cond_4
    iget-byte v14, v13, Lcom/evernote/thrift/protocol/TField;->type:B

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 415
    :pswitch_2
    iget-byte v14, v13, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v15, 0xf

    if-ne v14, v15, :cond_6

    .line 417
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v9

    .line 418
    .local v9, "_list100":Lcom/evernote/thrift/protocol/TList;
    new-instance v14, Ljava/util/ArrayList;

    iget v15, v9, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    .line 419
    const/4 v5, 0x0

    .local v5, "_i101":I
    :goto_4
    iget v14, v9, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v5, v14, :cond_5

    .line 422
    new-instance v1, Lcom/evernote/edam/type/Tag;

    invoke-direct {v1}, Lcom/evernote/edam/type/Tag;-><init>()V

    .line 423
    .local v1, "_elem102":Lcom/evernote/edam/type/Tag;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/evernote/edam/type/Tag;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 426
    .end local v1    # "_elem102":Lcom/evernote/edam/type/Tag;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 429
    .end local v5    # "_i101":I
    .end local v9    # "_list100":Lcom/evernote/thrift/protocol/TList;
    :cond_6
    iget-byte v14, v13, Lcom/evernote/thrift/protocol/TField;->type:B

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 433
    :pswitch_3
    iget-byte v14, v13, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v15, 0xf

    if-ne v14, v15, :cond_8

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v10

    .line 436
    .local v10, "_list103":Lcom/evernote/thrift/protocol/TList;
    new-instance v14, Ljava/util/ArrayList;

    iget v15, v10, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    .line 437
    const/4 v6, 0x0

    .local v6, "_i104":I
    :goto_5
    iget v14, v10, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v6, v14, :cond_7

    .line 440
    new-instance v2, Lcom/evernote/edam/type/NotebookDescriptor;

    invoke-direct {v2}, Lcom/evernote/edam/type/NotebookDescriptor;-><init>()V

    .line 441
    .local v2, "_elem105":Lcom/evernote/edam/type/NotebookDescriptor;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/evernote/edam/type/NotebookDescriptor;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 444
    .end local v2    # "_elem105":Lcom/evernote/edam/type/NotebookDescriptor;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 447
    .end local v6    # "_i104":I
    .end local v10    # "_list103":Lcom/evernote/thrift/protocol/TList;
    :cond_8
    iget-byte v14, v13, Lcom/evernote/thrift/protocol/TField;->type:B

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setContainingNotebooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/NotebookDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "containingNotebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/NotebookDescriptor;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    .line 247
    return-void
.end method

.method public setContainingNotebooksIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    .line 262
    :cond_0
    return-void
.end method

.method public setNotebooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "notebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Notebook;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    .line 171
    return-void
.end method

.method public setNotebooksIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    .line 186
    :cond_0
    return-void
.end method

.method public setNotes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Note;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    .line 133
    return-void
.end method

.method public setNotesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    .line 148
    :cond_0
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Tag;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    .line 209
    return-void
.end method

.method public setTagsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    .line 224
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RelatedResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 528
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    const-string v2, "notes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    if-nez v2, :cond_7

    .line 531
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :goto_0
    const/4 v0, 0x0

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotebooks()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 538
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_1
    const-string v2, "notebooks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    if-nez v2, :cond_8

    .line 541
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :goto_1
    const/4 v0, 0x0

    .line 547
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetTags()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 548
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_3
    const-string v2, "tags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    if-nez v2, :cond_9

    .line 551
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :goto_2
    const/4 v0, 0x0

    .line 557
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetContainingNotebooks()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 558
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_5
    const-string v2, "containingNotebooks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    if-nez v2, :cond_a

    .line 561
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :goto_3
    const/4 v0, 0x0

    .line 567
    :cond_6
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 533
    :cond_7
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 543
    :cond_8
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 553
    :cond_9
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 563
    :cond_a
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public unsetContainingNotebooks()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    .line 251
    return-void
.end method

.method public unsetNotebooks()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    .line 175
    return-void
.end method

.method public unsetNotes()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    .line 137
    return-void
.end method

.method public unsetTags()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    .line 213
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 573
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 8
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    .line 460
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->validate()V

    .line 462
    sget-object v5, Lcom/evernote/edam/notestore/RelatedResult;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 463
    iget-object v5, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotes()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    sget-object v5, Lcom/evernote/edam/notestore/RelatedResult;->NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 467
    new-instance v5, Lcom/evernote/thrift/protocol/TList;

    iget-object v6, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v7, v6}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 468
    iget-object v5, p0, Lcom/evernote/edam/notestore/RelatedResult;->notes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/type/Note;

    .line 470
    .local v0, "_iter106":Lcom/evernote/edam/type/Note;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Note;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 472
    .end local v0    # "_iter106":Lcom/evernote/edam/type/Note;
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 474
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 477
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 478
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetNotebooks()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 479
    sget-object v5, Lcom/evernote/edam/notestore/RelatedResult;->NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 481
    new-instance v5, Lcom/evernote/thrift/protocol/TList;

    iget-object v6, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v7, v6}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 482
    iget-object v5, p0, Lcom/evernote/edam/notestore/RelatedResult;->notebooks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/edam/type/Notebook;

    .line 484
    .local v1, "_iter107":Lcom/evernote/edam/type/Notebook;
    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Notebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 486
    .end local v1    # "_iter107":Lcom/evernote/edam/type/Notebook;
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 488
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 491
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 492
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetTags()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 493
    sget-object v5, Lcom/evernote/edam/notestore/RelatedResult;->TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 495
    new-instance v5, Lcom/evernote/thrift/protocol/TList;

    iget-object v6, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v7, v6}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 496
    iget-object v5, p0, Lcom/evernote/edam/notestore/RelatedResult;->tags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/Tag;

    .line 498
    .local v2, "_iter108":Lcom/evernote/edam/type/Tag;
    invoke-virtual {v2, p1}, Lcom/evernote/edam/type/Tag;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_2

    .line 500
    .end local v2    # "_iter108":Lcom/evernote/edam/type/Tag;
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 502
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 505
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v5, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 506
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResult;->isSetContainingNotebooks()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 507
    sget-object v5, Lcom/evernote/edam/notestore/RelatedResult;->CONTAINING_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 509
    new-instance v5, Lcom/evernote/thrift/protocol/TList;

    iget-object v6, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v7, v6}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 510
    iget-object v5, p0, Lcom/evernote/edam/notestore/RelatedResult;->containingNotebooks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evernote/edam/type/NotebookDescriptor;

    .line 512
    .local v3, "_iter109":Lcom/evernote/edam/type/NotebookDescriptor;
    invoke-virtual {v3, p1}, Lcom/evernote/edam/type/NotebookDescriptor;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_3

    .line 514
    .end local v3    # "_iter109":Lcom/evernote/edam/type/NotebookDescriptor;
    :cond_6
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 516
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 519
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 520
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 521
    return-void
.end method
