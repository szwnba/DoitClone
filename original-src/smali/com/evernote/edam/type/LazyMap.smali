.class public Lcom/evernote/edam/type/LazyMap;
.super Ljava/lang/Object;
.source "LazyMap.java"

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
        "Lcom/evernote/edam/type/LazyMap;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final KEYS_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private fullMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keysOnly:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "LazyMap"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/LazyMap;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 50
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "keysOnly"

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/LazyMap;->KEYS_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 51
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "fullMap"

    const/16 v2, 0xd

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/LazyMap;->FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/LazyMap;)V
    .locals 10
    .param p1, "other"    # Lcom/evernote/edam/type/LazyMap;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Lcom/evernote/edam/type/LazyMap;->isSetKeysOnly()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 67
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 68
    .local v3, "__this__keysOnly":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v9, p1, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 69
    .local v5, "other_element":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v5    # "other_element":Ljava/lang/String;
    :cond_0
    iput-object v3, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    .line 73
    .end local v3    # "__this__keysOnly":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/LazyMap;->isSetFullMap()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v0, "__this__fullMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p1, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 77
    .local v6, "other_element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 78
    .local v7, "other_element_key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 80
    .local v8, "other_element_value":Ljava/lang/String;
    move-object v1, v7

    .line 82
    .local v1, "__this__fullMap_copy_key":Ljava/lang/String;
    move-object v2, v8

    .line 84
    .local v2, "__this__fullMap_copy_value":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    .end local v1    # "__this__fullMap_copy_key":Ljava/lang/String;
    .end local v2    # "__this__fullMap_copy_value":Ljava/lang/String;
    .end local v6    # "other_element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "other_element_key":Ljava/lang/String;
    .end local v8    # "other_element_value":Ljava/lang/String;
    :cond_2
    iput-object v0, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    .line 88
    .end local v0    # "__this__fullMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method


# virtual methods
.method public addToKeysOnly(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    .line 96
    iput-object v0, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    .line 97
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/LazyMap;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/LazyMap;

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
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

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    const/4 v0, 0x0

    .line 216
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 218
    .local v1, "typedOther":Lcom/evernote/edam/type/LazyMap;
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->isSetKeysOnly()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/LazyMap;->isSetKeysOnly()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 219
    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->isSetKeysOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    iget-object v3, v1, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    .line 223
    if-nez v0, :cond_0

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->isSetFullMap()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/LazyMap;->isSetFullMap()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 228
    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->isSetFullMap()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 232
    if-nez v0, :cond_0

    .line 236
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/evernote/edam/type/LazyMap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/LazyMap;->compareTo(Lcom/evernote/edam/type/LazyMap;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/LazyMap;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/evernote/edam/type/LazyMap;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/LazyMap;-><init>(Lcom/evernote/edam/type/LazyMap;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->deepCopy()Lcom/evernote/edam/type/LazyMap;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/LazyMap;)Z
    .locals 7
    .param p1, "that"    # Lcom/evernote/edam/type/LazyMap;

    .prologue
    const/4 v4, 0x0

    .line 181
    if-nez p1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v4

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->isSetKeysOnly()Z

    move-result v3

    .line 185
    .local v3, "this_present_keysOnly":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/LazyMap;->isSetKeysOnly()Z

    move-result v1

    .line 186
    .local v1, "that_present_keysOnly":Z
    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    .line 187
    :cond_2
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 189
    iget-object v5, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    iget-object v6, p1, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->isSetFullMap()Z

    move-result v2

    .line 194
    .local v2, "this_present_fullMap":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/LazyMap;->isSetFullMap()Z

    move-result v0

    .line 195
    .local v0, "that_present_fullMap":Z
    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    .line 196
    :cond_4
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 198
    iget-object v5, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 173
    if-nez p1, :cond_1

    .line 177
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 175
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/LazyMap;

    if-eqz v1, :cond_0

    .line 176
    check-cast p1, Lcom/evernote/edam/type/LazyMap;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/LazyMap;->equals(Lcom/evernote/edam/type/LazyMap;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFullMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFullMapSize()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getKeysOnly()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    return-object v0
.end method

.method public getKeysOnlyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeysOnlySize()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public isSetFullMap()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetKeysOnly()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putToFullMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 10
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 244
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v7

    .line 245
    .local v7, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v8, v7, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v8, :cond_0

    .line 290
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 291
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->validate()V

    .line 292
    return-void

    .line 248
    :cond_0
    iget-short v8, v7, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v8, :pswitch_data_0

    .line 286
    iget-byte v8, v7, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v8}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 288
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 250
    :pswitch_0
    iget-byte v8, v7, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v9, 0xe

    if-ne v8, v9, :cond_2

    .line 252
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readSetBegin()Lcom/evernote/thrift/protocol/TSet;

    move-result-object v5

    .line 253
    .local v5, "_set8":Lcom/evernote/thrift/protocol/TSet;
    new-instance v8, Ljava/util/HashSet;

    iget v9, v5, Lcom/evernote/thrift/protocol/TSet;->size:I

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(I)V

    iput-object v8, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    .line 254
    const/4 v2, 0x0

    .local v2, "_i9":I
    :goto_2
    iget v8, v5, Lcom/evernote/thrift/protocol/TSet;->size:I

    if-ge v2, v8, :cond_1

    .line 257
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "_elem10":Ljava/lang/String;
    iget-object v8, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 260
    .end local v0    # "_elem10":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readSetEnd()V

    goto :goto_1

    .line 263
    .end local v2    # "_i9":I
    .end local v5    # "_set8":Lcom/evernote/thrift/protocol/TSet;
    :cond_2
    iget-byte v8, v7, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v8}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 267
    :pswitch_1
    iget-byte v8, v7, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v9, 0xd

    if-ne v8, v9, :cond_4

    .line 269
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readMapBegin()Lcom/evernote/thrift/protocol/TMap;

    move-result-object v4

    .line 270
    .local v4, "_map11":Lcom/evernote/thrift/protocol/TMap;
    new-instance v8, Ljava/util/HashMap;

    iget v9, v4, Lcom/evernote/thrift/protocol/TMap;->size:I

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    .line 271
    const/4 v1, 0x0

    .local v1, "_i12":I
    :goto_3
    iget v8, v4, Lcom/evernote/thrift/protocol/TMap;->size:I

    if-ge v1, v8, :cond_3

    .line 275
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "_key13":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "_val14":Ljava/lang/String;
    iget-object v8, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 279
    .end local v3    # "_key13":Ljava/lang/String;
    .end local v6    # "_val14":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readMapEnd()V

    goto :goto_1

    .line 282
    .end local v1    # "_i12":I
    .end local v4    # "_map11":Lcom/evernote/thrift/protocol/TMap;
    :cond_4
    iget-byte v8, v7, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v8}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFullMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "fullMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    .line 154
    return-void
.end method

.method public setFullMapIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    .line 169
    :cond_0
    return-void
.end method

.method public setKeysOnly(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "keysOnly":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    .line 120
    return-void
.end method

.method public setKeysOnlyIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    .line 135
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LazyMap("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 336
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->isSetKeysOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const-string v2, "keysOnly:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v2, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    if-nez v2, :cond_3

    .line 339
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :goto_0
    const/4 v0, 0x0

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->isSetFullMap()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_1
    const-string v2, "fullMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v2, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    if-nez v2, :cond_4

    .line 349
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :goto_1
    const/4 v0, 0x0

    .line 355
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 341
    :cond_3
    iget-object v2, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 351
    :cond_4
    iget-object v2, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unsetFullMap()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    .line 158
    return-void
.end method

.method public unsetKeysOnly()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    .line 124
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
    .line 361
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 6
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xb

    .line 295
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->validate()V

    .line 297
    sget-object v3, Lcom/evernote/edam/type/LazyMap;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 298
    iget-object v3, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    if-eqz v3, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->isSetKeysOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    sget-object v3, Lcom/evernote/edam/type/LazyMap;->KEYS_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 302
    new-instance v3, Lcom/evernote/thrift/protocol/TSet;

    iget-object v4, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v5, v4}, Lcom/evernote/thrift/protocol/TSet;-><init>(BI)V

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeSetBegin(Lcom/evernote/thrift/protocol/TSet;)V

    .line 303
    iget-object v3, p0, Lcom/evernote/edam/type/LazyMap;->keysOnly:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    .local v0, "_iter15":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    .end local v0    # "_iter15":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeSetEnd()V

    .line 309
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 312
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/evernote/edam/type/LazyMap;->isSetFullMap()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 314
    sget-object v3, Lcom/evernote/edam/type/LazyMap;->FULL_MAP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 316
    new-instance v3, Lcom/evernote/thrift/protocol/TMap;

    iget-object v4, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v5, v5, v4}, Lcom/evernote/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeMapBegin(Lcom/evernote/thrift/protocol/TMap;)V

    .line 317
    iget-object v3, p0, Lcom/evernote/edam/type/LazyMap;->fullMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 319
    .local v1, "_iter16":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 320
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 322
    .end local v1    # "_iter16":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMapEnd()V

    .line 324
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 327
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 328
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 329
    return-void
.end method
